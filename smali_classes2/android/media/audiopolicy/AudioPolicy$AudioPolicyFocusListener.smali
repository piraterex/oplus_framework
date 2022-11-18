.class public abstract Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
.super Ljava/lang/Object;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AudioPolicyFocusListener"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    .locals 0
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 924
    return-void
.end method

.method public whitelist onAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    .locals 0
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .line 905
    return-void
.end method

.method public whitelist onAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    .locals 0
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasNotified"    # Z

    .line 906
    return-void
.end method

.method public whitelist onAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    .locals 0
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .line 916
    return-void
.end method
