.class public interface abstract Landroid/view/WindowInsetsAnimationController;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationController.java"


# virtual methods
.method public abstract whitelist finish(Z)V
.end method

.method public abstract whitelist getCurrentAlpha()F
.end method

.method public abstract whitelist getCurrentFraction()F
.end method

.method public abstract whitelist getCurrentInsets()Landroid/graphics/Insets;
.end method

.method public abstract whitelist getHiddenStateInsets()Landroid/graphics/Insets;
.end method

.method public abstract whitelist getShownStateInsets()Landroid/graphics/Insets;
.end method

.method public abstract whitelist getTypes()I
.end method

.method public abstract blacklist hasZeroInsetsIme()Z
.end method

.method public abstract whitelist isCancelled()Z
.end method

.method public abstract whitelist isFinished()Z
.end method

.method public whitelist isReady()Z
    .locals 1

    .line 164
    invoke-interface {p0}, Landroid/view/WindowInsetsAnimationController;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Landroid/view/WindowInsetsAnimationController;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract whitelist setInsetsAndAlpha(Landroid/graphics/Insets;FF)V
.end method
