.class public interface abstract Landroid/media/MediaCas$EventListener;
.super Ljava/lang/Object;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract whitelist onEvent(Landroid/media/MediaCas;II[B)V
.end method

.method public whitelist onPluginStatusUpdate(Landroid/media/MediaCas;II)V
    .locals 2
    .param p1, "mediaCas"    # Landroid/media/MediaCas;
    .param p2, "status"    # I
    .param p3, "arg"    # I

    .line 832
    const-string v0, "MediaCas"

    const-string v1, "Received MediaCas Plugin Status event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return-void
.end method

.method public whitelist onResourceLost(Landroid/media/MediaCas;)V
    .locals 2
    .param p1, "mediaCas"    # Landroid/media/MediaCas;

    .line 841
    const-string v0, "MediaCas"

    const-string v1, "Received MediaCas Resource Reclaim event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return-void
.end method

.method public whitelist onSessionEvent(Landroid/media/MediaCas;Landroid/media/MediaCas$Session;II[B)V
    .locals 2
    .param p1, "mediaCas"    # Landroid/media/MediaCas;
    .param p2, "session"    # Landroid/media/MediaCas$Session;
    .param p3, "event"    # I
    .param p4, "arg"    # I
    .param p5, "data"    # [B

    .line 820
    const-string v0, "MediaCas"

    const-string v1, "Received MediaCas Session event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void
.end method
