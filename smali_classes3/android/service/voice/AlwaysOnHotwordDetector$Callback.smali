.class public abstract Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
.super Ljava/lang/Object;
.source "AlwaysOnHotwordDetector.java"

# interfaces
.implements Landroid/service/voice/HotwordDetector$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onAvailabilityChanged(I)V
.end method

.method public abstract whitelist onDetected(Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;)V
.end method

.method public abstract whitelist onError()V
.end method

.method public whitelist onHotwordDetectionServiceInitialized(I)V
    .locals 0
    .param p1, "status"    # I

    .line 759
    return-void
.end method

.method public whitelist onHotwordDetectionServiceRestarted()V
    .locals 0

    .line 768
    return-void
.end method

.method public abstract whitelist onRecognitionPaused()V
.end method

.method public abstract whitelist onRecognitionResumed()V
.end method

.method public whitelist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 0
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;

    .line 747
    return-void
.end method
