.class Landroid/media/AudioManager$AudioManagerWrapper;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/IAudioManagerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioManagerWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method private constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 0

    .line 9108
    iput-object p1, p0, Landroid/media/AudioManager$AudioManagerWrapper;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$AudioManagerWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioManager$AudioManagerWrapper;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method


# virtual methods
.method public blacklist getExtImpl()Landroid/media/IAudioManagerExt;
    .locals 1

    .line 9111
    iget-object v0, p0, Landroid/media/AudioManager$AudioManagerWrapper;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmAmExt(Landroid/media/AudioManager;)Landroid/media/IAudioManagerExt;

    move-result-object v0

    return-object v0
.end method
