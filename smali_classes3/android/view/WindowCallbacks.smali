.class public interface abstract Landroid/view/WindowCallbacks;
.super Ljava/lang/Object;
.source "WindowCallbacks.java"


# static fields
.field public static final greylist-max-o RESIZE_MODE_DOCKED_DIVIDER:I = 0x1

.field public static final greylist-max-o RESIZE_MODE_FREEFORM:I = 0x0

.field public static final greylist-max-o RESIZE_MODE_INVALID:I = -0x1


# virtual methods
.method public abstract greylist-max-o onContentDrawn(IIII)Z
.end method

.method public abstract blacklist onPostDraw(Landroid/graphics/RecordingCanvas;)V
.end method

.method public abstract greylist-max-o onRequestDraw(Z)V
.end method

.method public abstract greylist-max-o onWindowDragResizeEnd()V
.end method

.method public abstract greylist-max-o onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
.end method

.method public abstract greylist-max-o onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method
