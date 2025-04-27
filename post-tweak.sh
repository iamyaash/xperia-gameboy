#!/bin/bash

echo "🚀 Boosting Performace visa ADB..."

prompt_animation_scale(){
    echo "🎨 Choose your preferred animation scale (0 = no animations, 0.5 = moderate, 1 = standard):"
    echo "🔧 Recommended for high-end devices: 1 (Standard animations)"
    echo "⚡️ Recommended for mid-range/low-end devices: 0.5 (Moderate animations)"
    read -p "Enter 0, 0.5, or 1: " anim_scale

    #validate input
    if [[ "$anim_scale" != "0" && "$anim_scale" != "0.5" && "$anim_scale" != "1" ]]; then
        echo "❌ Invalid input. Setting to 0.5 (moderate) by default."
        anim_scale=0.5
    fi
    echo "Setting animation scale to $anim_scale"
    adb shell settings put global window_animation_scale $anim_scale
    adb shell settings put global transition_animation_scale $anim_scale
    adb shell settings put global animator_duration_scale $anim_scale
}

prompt_background_limit() {
    echo "🔧 Choose your preferred background process limit(0, 2, 4): "
    echo "⚡️ Recommended for high-end devices: 4 (Standard background processes)"
    echo "⚙️ Recommended for mid-range devices: 2 (Limited background processes)"
    echo "🔥 Recommended for low-end devices: 0 (No background processes)"
    read -p "Enter 0, 2, or 4: " bg_limit
    if [[ "$bg_limit" != "0" && "$bg_limit" != "2" && "$bg_limit" != "4" ]]; then
        echo "❌ Invalid input. Setting to 2 (Limited background processes) by default."
        bg_limit=2
    fi
    
    echo "✅ Setting background process limit to $bg_limit"
    adb shell settings put global limit_background_processes $bg_limit
}

# handle animation
prompt_animation_scale
echo "✅ Animation Scale has been successfully set."

# handle background limit
prompt_background_limit
echo "✅ Background process limit successfully set."

