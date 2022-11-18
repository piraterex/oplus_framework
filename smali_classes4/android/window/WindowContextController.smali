.class public Landroid/window/WindowContextController;
.super Ljava/lang/Object;
.source "WindowContextController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowContextController$AttachStatus;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_ATTACH:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "WindowContextController"


# instance fields
.field public blacklist mAttachedToDisplayArea:I

.field private final blacklist mToken:Landroid/window/WindowTokenClient;


# direct methods
.method public constructor blacklist <init>(Landroid/window/WindowTokenClient;)V
    .locals 1
    .param p1, "token"    # Landroid/window/WindowTokenClient;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    .line 91
    iput-object p1, p0, Landroid/window/WindowContextController;->mToken:Landroid/window/WindowTokenClient;

    .line 92
    return-void
.end method


# virtual methods
.method public blacklist attachToDisplayArea(IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "displayId"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 104
    iget v0, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 108
    iget-object v0, p0, Landroid/window/WindowContextController;->mToken:Landroid/window/WindowTokenClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/window/WindowTokenClient;->attachToDisplayArea(IILandroid/os/Bundle;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    .line 109
    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    .line 110
    if-ne v1, v2, :cond_1

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachToDisplayArea fail, type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowContextController"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    return-void

    .line 105
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A Window Context can be only attached to a DisplayArea once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist attachToWindowToken(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 140
    iget v0, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Landroid/window/WindowContextController;->mToken:Landroid/window/WindowTokenClient;

    invoke-virtual {v0, p1}, Landroid/window/WindowTokenClient;->attachToWindowToken(Landroid/os/IBinder;)V

    .line 145
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Window Context should have been attached to a DisplayArea. AttachToDisplayArea:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist detachIfNeeded()V
    .locals 2

    .line 149
    iget v0, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Landroid/window/WindowContextController;->mToken:Landroid/window/WindowTokenClient;

    invoke-virtual {v0}, Landroid/window/WindowTokenClient;->detachFromWindowContainerIfNeeded()V

    .line 151
    const/4 v0, 0x2

    iput v0, p0, Landroid/window/WindowContextController;->mAttachedToDisplayArea:I

    .line 156
    :cond_0
    return-void
.end method
