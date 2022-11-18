.class public abstract Landroid/media/tv/TvRecordingClient$RecordingCallback;
.super Ljava/lang/Object;
.source "TvRecordingClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvRecordingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RecordingCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onConnectionFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    .line 378
    return-void
.end method

.method public whitelist onDisconnected(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    .line 386
    return-void
.end method

.method public whitelist onError(I)V
    .locals 0
    .param p1, "error"    # I

    .line 419
    return-void
.end method

.method public whitelist onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "eventArgs"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 431
    return-void
.end method

.method public whitelist onRecordingStopped(Landroid/net/Uri;)V
    .locals 0
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    .line 405
    return-void
.end method

.method public whitelist onTuned(Landroid/net/Uri;)V
    .locals 0
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 395
    return-void
.end method
