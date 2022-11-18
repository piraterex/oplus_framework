.class public interface abstract Landroid/app/IDialogExt;
.super Ljava/lang/Object;
.source "IDialogExt.java"


# static fields
.field public static final blacklist LOG_LEVEL_DEBUG:I = 0x1

.field public static final blacklist LOG_LEVEL_VERBOSE:I = 0x2


# virtual methods
.method public blacklist changeDarkAlgorithmType(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 29
    return-void
.end method

.method public blacklist logEvent(ILjava/lang/String;Landroid/view/KeyEvent;Ljava/lang/String;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "info"    # Ljava/lang/String;

    .line 32
    return-void
.end method
