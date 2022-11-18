.class Landroid/media/AudioManager$PrefDevListenerInfo;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrefDevListenerInfo"
.end annotation


# instance fields
.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mListener:Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;
    .param p2, "exe"    # Ljava/util/concurrent/Executor;

    .line 2137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2138
    iput-object p1, p0, Landroid/media/AudioManager$PrefDevListenerInfo;->mListener:Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;

    .line 2139
    iput-object p2, p0, Landroid/media/AudioManager$PrefDevListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2140
    return-void
.end method
