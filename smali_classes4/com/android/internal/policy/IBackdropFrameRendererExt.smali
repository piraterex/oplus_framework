.class public interface abstract Lcom/android/internal/policy/IBackdropFrameRendererExt;
.super Ljava/lang/Object;
.source "IBackdropFrameRendererExt.java"


# virtual methods
.method public blacklist checkSystemBarForceDark(Lcom/android/internal/policy/DecorView;Landroid/graphics/RenderNode;)V
    .locals 0
    .param p1, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p2, "systemBarBackgroundNode"    # Landroid/graphics/RenderNode;

    .line 16
    return-void
.end method

.method public blacklist drawDarkModeBackground(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;IIIIILandroid/graphics/RecordingCanvas;Landroid/graphics/RenderNode;)V
    .locals 0
    .param p1, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "lastCaptionHeight"    # I
    .param p4, "top"    # I
    .param p5, "left"    # I
    .param p6, "height"    # I
    .param p7, "width"    # I
    .param p8, "canvas"    # Landroid/graphics/RecordingCanvas;
    .param p9, "renderNode"    # Landroid/graphics/RenderNode;

    .line 12
    return-void
.end method
