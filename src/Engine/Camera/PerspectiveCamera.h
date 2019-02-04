#ifndef OPENGL_PERSPECTIVEPROJECTIONRENDERER_H
#define OPENGL_PERSPECTIVEPROJECTIONRENDERER_H


#include "BaseCamera.h"

std::ostream& operator<<(std::ostream & out, const glm::vec3 & v)
{
    return out << "(" << v.x << ", " << v.y << ", " << v.z << ")";
}

class PerspectiveCamera : public BaseCamera {

    public:
        glm::vec3 position = glm::vec3(0.0, 0.0, 0.0);
        glm::vec3 front = glm::vec3(0.0, 0.0, -1.0);
        glm::vec3 up = glm::vec3(0.0, 1.0, 0.0);

        float yaw = 0.0f;
        float pitch = 0.0f;
        bool rightMousePressed = false;

        bool first = true;

        explicit PerspectiveCamera(std::shared_ptr<Window> & window, const glm::vec3 position) : BaseCamera(window) {
            this->position = position;
        }

        void onPointerDeltaChanged(glm::vec2 & delta) override {
            if( !rightMousePressed) {
                return;
            }

            if (first) {
                std::cout << "Ignoring first" << std::endl;
                first = false;
                return;
            }

            float sensitivity = 0.05;

            yaw += (delta.x  * sensitivity);
            pitch += (delta.y * sensitivity);

            if(pitch > 89.0f) {
                pitch = 89.0f;
            }

            if(pitch < -89.0f) {
                pitch = -89.0f;
            }

            std::cout << "Yaw: " << yaw << "Pitch: " << pitch << std::endl;

            glm::vec3 f;
            f.x = sin(glm::radians(yaw)) * cos(glm::radians(pitch));
            f.y = -sin(glm::radians(pitch));
            f.z = -cos(glm::radians(yaw)) * cos(glm::radians(pitch));

            front = glm::normalize(f);

            //std::cout << "Front: " << front << std::endl;
        }

        void onMouseButtonPressed(int button, int action) override {
            if (button == GLFW_MOUSE_BUTTON_RIGHT) {
                if (action == GLFW_PRESS && !rightMousePressed) {
                    rightMousePressed = true;
                }
                else if (rightMousePressed) {
                    rightMousePressed = false;
                }
            }
        }

        void onKeysPressedStateReceived(std::vector<bool> & pressed_keys) override {
            float speed = 0.1f;

            if (pressed_keys[GLFW_KEY_LEFT_ALT]) {
                speed *= 0.1f;
            }

            if (pressed_keys[GLFW_KEY_LEFT_SHIFT]) {
                speed *= 2.0f;
            }

            if (pressed_keys[GLFW_KEY_A]) {
                glm::vec3 cross_p = glm::normalize(glm::cross(up, front));
                position += cross_p * speed;
            }

            if (pressed_keys[GLFW_KEY_W]) {
                position += front * speed;
            }

            if (pressed_keys[GLFW_KEY_S]) {
                position -= front *speed;
            }

            if (pressed_keys[GLFW_KEY_D]) {
                glm::vec3 cross_p = glm::normalize(glm::cross(up, front));
                position -= cross_p * speed;
            }
        }

        glm::mat4x4 getModelMatrix() override {
            return glm::mat4(1.0);
        }

        glm::mat4x4 getViewMatrix() override {
            return glm::lookAt(position, position + front, up);
        }

        glm::mat4x4 getProjectionMatrix() override {
            return glm::perspective(glm::radians(45.0f), window->aspectRatio, 0.1f, 1000.0f);
        }
};

#endif //OPENGL_PERSPECTIVEPROJECTIONRENDERER_H
