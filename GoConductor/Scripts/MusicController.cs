﻿namespace GoConductor;

public interface IMusicController
{
    public void Play();

    public void Pause();

    public void Stop();

    public void Restart();

    public void TogglePause();
}