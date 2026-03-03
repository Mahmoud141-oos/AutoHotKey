; ================================
; CleanDesktop - AutoHotkey v2
; ================================

; F9 → ترتيب سطح المكتب
F9::
{
    desktop := A_Desktop

    DirCreate(desktop "\Pictures")
    DirCreate(desktop "\Videos")
    DirCreate(desktop "\Documents")

    Loop Files desktop "\*.jpg"
        FileMove(A_LoopFileFullPath, desktop "\Pictures\")

    Loop Files desktop "\*.png"
        FileMove(A_LoopFileFullPath, desktop "\Pictures\")

    Loop Files desktop "\*.mp4"
        FileMove(A_LoopFileFullPath, desktop "\Videos\")

    Loop Files desktop "\*.pdf"
        FileMove(A_LoopFileFullPath, desktop "\Documents\")

    MsgBox("تم ترتيب سطح المكتب بنجاح ✅")
}

; F10 → اختبار
F10::
{
    MsgBox("السكربت يعمل بشكل صحيح ✅")
}