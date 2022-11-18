.class public final Landroid/hardware/input/VirtualKeyEvent$Builder;
.super Ljava/lang/Object;
.source "VirtualKeyEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualKeyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:I

.field private blacklist mKeyCode:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mAction:I

    .line 221
    iput v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mKeyCode:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualKeyEvent;
    .locals 4

    .line 227
    iget v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mAction:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mKeyCode:I

    if-eq v0, v1, :cond_0

    .line 231
    new-instance v0, Landroid/hardware/input/VirtualKeyEvent;

    iget v1, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mAction:I

    iget v2, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mKeyCode:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/input/VirtualKeyEvent;-><init>(IILandroid/hardware/input/VirtualKeyEvent-IA;)V

    return-object v0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build virtual key event with unset fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAction(I)Landroid/hardware/input/VirtualKeyEvent$Builder;
    .locals 2
    .param p1, "action"    # I

    .line 250
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported action type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    :goto_0
    iput p1, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mAction:I

    .line 254
    return-object p0
.end method

.method public whitelist setKeyCode(I)Landroid/hardware/input/VirtualKeyEvent$Builder;
    .locals 0
    .param p1, "keyCode"    # I

    .line 240
    iput p1, p0, Landroid/hardware/input/VirtualKeyEvent$Builder;->mKeyCode:I

    .line 241
    return-object p0
.end method
