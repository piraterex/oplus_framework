.class public interface abstract Landroid/widget/IEditorWrapper;
.super Ljava/lang/Object;
.source "IEditorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/IEditorWrapper$ISelectionModifierCursorControllerWrapper;
    }
.end annotation


# virtual methods
.method public blacklist getEditorExt()Landroid/widget/IEditorExt;
    .locals 1

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getShowCursor()J
    .locals 2

    .line 21
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getTextView()Landroid/widget/TextView;
    .locals 1

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist resumeBlink()V
    .locals 0

    .line 28
    return-void
.end method

.method public blacklist setShowCursor(J)V
    .locals 0
    .param p1, "showCursor"    # J

    .line 24
    return-void
.end method

.method public blacklist suspendBlink()V
    .locals 0

    .line 26
    return-void
.end method
