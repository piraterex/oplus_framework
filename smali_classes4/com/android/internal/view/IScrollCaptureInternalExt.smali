.class public interface abstract Lcom/android/internal/view/IScrollCaptureInternalExt;
.super Ljava/lang/Object;
.source "IScrollCaptureInternalExt.java"


# static fields
.field public static final blacklist DEFAULT:Lcom/android/internal/view/IScrollCaptureInternalExt;

.field public static final blacklist EXTRA_SCROLL_CAPTURE_COMPATIBLE:Ljava/lang/String; = "scroll_capture_compatible"

.field public static final blacklist EXTRA_SCROLL_RESET:Ljava/lang/String; = "scroll_reset"

.field public static final blacklist TYPE_FIRST_COMPAT:I = 0x3e8

.field public static final blacklist TYPE_FIRST_COMPAT_ASYNC:I = 0x7d0

.field public static final blacklist TYPE_OPAQUE:I = 0x3

.field public static final blacklist TYPE_VIEW_COMPAT:I = 0x3e9

.field public static final blacklist TYPE_VIEW_COMPAT_ASYNC:I = 0x7d1

.field public static final blacklist TYPE_WEBVIEW_COMPAT:I = 0x3e8

.field public static final blacklist TYPE_WEBVIEW_COMPAT_ASYNC:I = 0x7d0


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/android/internal/view/IScrollCaptureInternalExt$1;

    invoke-direct {v0}, Lcom/android/internal/view/IScrollCaptureInternalExt$1;-><init>()V

    sput-object v0, Lcom/android/internal/view/IScrollCaptureInternalExt;->DEFAULT:Lcom/android/internal/view/IScrollCaptureInternalExt;

    return-void
.end method


# virtual methods
.method public blacklist requestCallback(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/view/ScrollCaptureCallback;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "localVisibleRect"    # Landroid/graphics/Rect;
    .param p3, "positionInWindow"    # Landroid/graphics/Point;

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 108
    return-void
.end method
