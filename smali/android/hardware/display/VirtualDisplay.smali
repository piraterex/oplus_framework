.class public final Landroid/hardware/display/VirtualDisplay;
.super Ljava/lang/Object;
.source "VirtualDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/VirtualDisplay$Callback;
    }
.end annotation


# instance fields
.field private final greylist-max-o mDisplay:Landroid/view/Display;

.field private final greylist-max-o mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private greylist-max-o mSurface:Landroid/view/Surface;

.field private greylist-max-o mToken:Landroid/hardware/display/IVirtualDisplayCallback;

.field private final blacklist mWindowContext:Landroid/content/Context;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/view/Display;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;Landroid/content/Context;)V
    .locals 0
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p4, "surface"    # Landroid/view/Surface;
    .param p5, "windowContext"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 50
    iput-object p2, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    .line 51
    iput-object p3, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 52
    iput-object p4, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    .line 53
    iput-object p5, p0, Landroid/hardware/display/VirtualDisplay;->mWindowContext:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist getDisplay()Landroid/view/Display;
    .locals 1

    .line 60
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .locals 1

    .line 67
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public whitelist release()V
    .locals 2

    .line 109
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 113
    :cond_0
    return-void
.end method

.method public whitelist resize(III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "densityDpi"    # I

    .line 98
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    .line 99
    return-void
.end method

.method public blacklist setDisplayState(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .line 122
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1, v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setVirtualDisplayState(Landroid/hardware/display/IVirtualDisplayCallback;Z)V

    .line 125
    :cond_0
    return-void
.end method

.method public whitelist setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 83
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_0

    .line 84
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplay;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 85
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    .line 87
    :cond_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDisplay{display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/VirtualDisplay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
