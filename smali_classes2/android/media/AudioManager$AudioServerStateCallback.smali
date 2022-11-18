.class public abstract Landroid/media/AudioManager$AudioServerStateCallback;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AudioServerStateCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 7597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAudioServerDown()V
    .locals 0

    .line 7598
    return-void
.end method

.method public whitelist onAudioServerUp()V
    .locals 0

    .line 7599
    return-void
.end method
