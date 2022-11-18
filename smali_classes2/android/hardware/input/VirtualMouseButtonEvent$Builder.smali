.class public final Landroid/hardware/input/VirtualMouseButtonEvent$Builder;
.super Ljava/lang/Object;
.source "VirtualMouseButtonEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualMouseButtonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:I

.field private blacklist mButtonCode:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mAction:I

    .line 126
    iput v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mButtonCode:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualMouseButtonEvent;
    .locals 4

    .line 132
    iget v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mAction:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mButtonCode:I

    if-eq v0, v1, :cond_0

    .line 136
    new-instance v0, Landroid/hardware/input/VirtualMouseButtonEvent;

    iget v1, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mAction:I

    iget v2, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mButtonCode:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/input/VirtualMouseButtonEvent;-><init>(IILandroid/hardware/input/VirtualMouseButtonEvent-IA;)V

    return-object v0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build virtual mouse button event with unset fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAction(I)Landroid/hardware/input/VirtualMouseButtonEvent$Builder;
    .locals 2
    .param p1, "action"    # I

    .line 162
    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported mouse button action type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_1
    :goto_0
    iput p1, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mAction:I

    .line 166
    return-object p0
.end method

.method public whitelist setButtonCode(I)Landroid/hardware/input/VirtualMouseButtonEvent$Builder;
    .locals 2
    .param p1, "buttonCode"    # I

    .line 145
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported mouse button code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    :goto_0
    iput p1, p0, Landroid/hardware/input/VirtualMouseButtonEvent$Builder;->mButtonCode:I

    .line 153
    return-object p0
.end method
