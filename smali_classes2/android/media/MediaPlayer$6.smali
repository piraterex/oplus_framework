.class Landroid/media/MediaPlayer$6;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$mp:Landroid/media/MediaPlayer;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 3771
    iput-object p1, p0, Landroid/media/MediaPlayer$6;->val$mp:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 3775
    iget-object v0, p0, Landroid/media/MediaPlayer$6;->val$mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3776
    return-void
.end method
