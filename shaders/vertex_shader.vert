#version 330
float smoothFunc(float s) {
    return 3.0 * s * s - 2.0 * s * s * s;
}

float smoothFunc(float a, float b, float x) {
    float lambda = min(1.0, max(0.0, (x - a) / (b - a)));
    return smoothFunc(lambda);
}

void main() {}
