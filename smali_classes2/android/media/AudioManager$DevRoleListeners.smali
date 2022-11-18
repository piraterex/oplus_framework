.class Landroid/media/AudioManager$DevRoleListeners;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DevRoleListeners"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mDevRoleListenersLock:Ljava/lang/Object;

.field private blacklist mListenerInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioManager$DevRoleListenerInfo<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDevRoleListenersLock(Landroid/media/AudioManager$DevRoleListeners;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager$DevRoleListeners;->mDevRoleListenersLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager$DevRoleListeners;->mListenerInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioManager$DevRoleListeners;->mListenerInfos:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhasDevRoleListener(Landroid/media/AudioManager$DevRoleListeners;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioManager$DevRoleListeners;->hasDevRoleListener(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveDevRoleListener(Landroid/media/AudioManager$DevRoleListeners;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioManager$DevRoleListeners;->removeDevRoleListener(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 0

    .line 2464
    .local p0, "this":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    iput-object p1, p0, Landroid/media/AudioManager$DevRoleListeners;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2465
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioManager$DevRoleListeners;->mDevRoleListenersLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$DevRoleListeners-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioManager$DevRoleListeners;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method private blacklist getDevRoleListenerInfo(Ljava/lang/Object;)Landroid/media/AudioManager$DevRoleListenerInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/media/AudioManager$DevRoleListenerInfo<",
            "TT;>;"
        }
    .end annotation

    .line 2471
    .local p0, "this":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/media/AudioManager$DevRoleListeners;->mListenerInfos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2472
    return-object v1

    .line 2474
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager$DevRoleListenerInfo;

    .line 2475
    .local v2, "listenerInfo":Landroid/media/AudioManager$DevRoleListenerInfo;, "Landroid/media/AudioManager$DevRoleListenerInfo<TT;>;"
    iget-object v3, v2, Landroid/media/AudioManager$DevRoleListenerInfo;->mListener:Ljava/lang/Object;

    if-ne v3, p1, :cond_1

    .line 2476
    return-object v2

    .line 2478
    .end local v2    # "listenerInfo":Landroid/media/AudioManager$DevRoleListenerInfo;, "Landroid/media/AudioManager$DevRoleListenerInfo<TT;>;"
    :cond_1
    goto :goto_0

    .line 2479
    :cond_2
    return-object v1
.end method

.method private blacklist hasDevRoleListener(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2484
    .local p0, "this":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Landroid/media/AudioManager$DevRoleListeners;->getDevRoleListenerInfo(Ljava/lang/Object;)Landroid/media/AudioManager$DevRoleListenerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist removeDevRoleListener(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2489
    .local p0, "this":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Landroid/media/AudioManager$DevRoleListeners;->getDevRoleListenerInfo(Ljava/lang/Object;)Landroid/media/AudioManager$DevRoleListenerInfo;

    move-result-object v0

    .line 2490
    .local v0, "infoToRemove":Landroid/media/AudioManager$DevRoleListenerInfo;, "Landroid/media/AudioManager$DevRoleListenerInfo<TT;>;"
    if-eqz v0, :cond_0

    .line 2491
    iget-object v1, p0, Landroid/media/AudioManager$DevRoleListeners;->mListenerInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2492
    const/4 v1, 0x1

    return v1

    .line 2494
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
