#include <iostream>
#include <SDL.h>
#include <SDL_mixer_ext/SDL_mixer_ext.h>


static const int width = 800;
static const int height = 600;

int main() {

    // Initialize SDL video and audio systems
    SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO);

    // Initialize SDL mixer
    Mix_OpenAudio(44100, MIX_DEFAULT_FORMAT, 2, 2048);

    // Load audio files
    Mix_Music *backgroundSound = Mix_LoadMUS("/Users/chenshiang/Downloads/boss_1.ogg");
//    Mix_Music *backgroundSound = Mix_LoadMUS("/Users/chenshiang/Desktop/I-Love-PTSD/assets/music/app.wav");
    Mix_Chunk *jumpEffect = Mix_LoadWAV("/Users/chenshiang/Desktop/sdl2-mixer-sample/cmake-build-debug/JumpEffect.wav");
    Mix_Chunk *laserEffect = Mix_LoadWAV("/Users/chenshiang/Desktop/sdl2-mixer-sample/cmake-build-debug/LaserEffect.wav");

    // Create a SDL window
    SDL_Window *window = SDL_CreateWindow("Hello, SDL2", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, width, height, SDL_WINDOW_OPENGL);

    // Create a renderer (accelerated and in sync with the display refresh rate)
    SDL_Renderer *renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    SDL_SetRenderDrawColor(renderer, 255, 0, 0, 255);

    // Start the background music
    Mix_PlayMusic(backgroundSound, -1);

    bool running = true;
    SDL_Event event;
    while(running)
    {
        // Process events
        while(SDL_PollEvent(&event))
        {
            if(event.type == SDL_QUIT)
            {
                running = false;
            }
            else if(event.type == SDL_KEYDOWN)
            {
                // Press "1" and play jump effect
                if(event.key.keysym.sym == SDLK_1)
                {
                    Mix_PlayChannel(-1, jumpEffect, 0);

                    auto a = Mix_SetMusicPitch(backgroundSound, 2);
                    Mix_SetMusicSpeed(backgroundSound, 2.0f);

//                    std::cout << "a: "<< a << std::endl;


//                    std::cout << "time: " << Mix_MusicDuration(backgroundSound) << std::endl;
                    std::cout<<"speed: " << Mix_GetMusicSpeed(backgroundSound) << std::endl;
                    std::cout << "error: "<< SDL_GetError() << std::endl;
                }
                    // Press "2" and play laser effect
                else if(event.key.keysym.sym == SDLK_2)
                {
                    Mix_PlayChannel(-1, laserEffect, 0);
                }
            }
        }

        // Clear screen
        SDL_RenderClear(renderer);

        // Draw

        // Show what was drawn
        SDL_RenderPresent(renderer);
    }

    // Release resources

    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    Mix_FreeMusic(backgroundSound);
    Mix_FreeChunk(jumpEffect);
    Mix_FreeChunk(laserEffect);
    Mix_CloseAudio();
    SDL_Quit();

    return 0;
}
