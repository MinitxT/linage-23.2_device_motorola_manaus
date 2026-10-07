package org.lineageos.settings.device

import android.content.Context
import android.content.Intent
import android.media.AudioManager
import android.os.VibrationEffect
import android.os.Vibrator
import android.view.KeyEvent
import com.android.internal.os.DeviceKeyHandler

class KeyHandler(private val context: Context) : DeviceKeyHandler {

    private val audioManager = context.getSystemService(Context.AUDIO_SERVICE) as AudioManager
    private val vibrator = context.getSystemService(Context.VIBRATOR_SERVICE) as Vibrator

    override fun handleKeyEvent(event: KeyEvent): KeyEvent? {
        if (event.action != KeyEvent.ACTION_DOWN) {
            return event
        }

        when (event.scanCode) {
            // Define your scan codes or key codes here
            // Example for Mode Switch:
            MODE_NORMAL -> {
                setRingerMode(AudioManager.RINGER_MODE_NORMAL)
                return null
            }
            MODE_VIBRATE -> {
                setRingerMode(AudioManager.RINGER_MODE_VIBRATE)
                return null
            }
            MODE_SILENT -> {
                setRingerMode(AudioManager.RINGER_MODE_SILENT)
                return null
            }
        }

        return event
    }

    private fun setRingerMode(mode: Int) {
        audioManager.ringerModeInternal = mode
        doHapticFeedback()
    }

    private fun doHapticFeedback() {
        if (vibrator.hasVibrator()) {
            vibrator.vibrate(VibrationEffect.createOneShot(50, VibrationEffect.DEFAULT_AMPLITUDE))
        }
    }

    companion object {
        private const val MODE_NORMAL = 601
        private const val MODE_VIBRATE = 602
        private const val MODE_SILENT = 603
    }
}