.class public Lcom/oplus/romupdate/RomUpdateObserver;
.super Ljava/lang/Object;
.source "RomUpdateObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;
    }
.end annotation


# static fields
.field private static final blacklist BROADCAST_ACTION_ROM_UPDATE_CONFIG_SUCCESS:Ljava/lang/String; = "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

.field private static final blacklist COMPONENT_SAFE_PERMISSION:Ljava/lang/String; = "oplus.permission.OPLUS_COMPONENT_SAFE"

.field public static final whitelist CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

.field private static final blacklist DEBUG:Z

.field private static final blacklist ROM_UPDATE_CONFIG_LIST:Ljava/lang/String; = "ROM_UPDATE_CONFIG_LIST"

.field private static final blacklist TAG:Ljava/lang/String; = "RomUpdateObserver"

.field private static final blacklist THREAD_NAME:Ljava/lang/String; = "rus_observer_thread"

.field private static volatile blacklist sObserver:Lcom/oplus/romupdate/RomUpdateObserver;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mInitDone:Z

.field private final blacklist mRegisterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdealReceiveEvent(Lcom/oplus/romupdate/RomUpdateObserver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/romupdate/RomUpdateObserver;->dealReceiveEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 37
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/romupdate/RomUpdateObserver;->DEBUG:Z

    .line 42
    const-string v0, "content://com.oplus.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/romupdate/RomUpdateObserver;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mRegisterMap:Ljava/util/HashMap;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mInitDone:Z

    .line 51
    return-void
.end method

.method private blacklist dealReceiveEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 87
    const-string v0, "RomUpdateObserver"

    const-string v1, "dealReceiveEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v0, "ROM_UPDATE_CONFIG_LIST"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 89
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 90
    const-string v1, "RomUpdateObserver"

    const-string v2, "list is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 93
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 94
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mRegisterMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 96
    :try_start_0
    iget-object v4, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mRegisterMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    const-string v4, "RomUpdateObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on receive"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v4, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mRegisterMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 99
    .local v4, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 100
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;

    invoke-interface {v6, p1}, Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;->onReceive(Landroid/content/Context;)V

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 103
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;>;"
    .end local v5    # "j":I
    :cond_1
    monitor-exit v3

    .line 93
    .end local v2    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .restart local v2    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 105
    .end local v1    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/romupdate/RomUpdateObserver;
    .locals 2

    .line 54
    sget-object v0, Lcom/oplus/romupdate/RomUpdateObserver;->sObserver:Lcom/oplus/romupdate/RomUpdateObserver;

    if-nez v0, :cond_1

    .line 55
    const-class v0, Lcom/oplus/romupdate/RomUpdateObserver;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/oplus/romupdate/RomUpdateObserver;->sObserver:Lcom/oplus/romupdate/RomUpdateObserver;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/oplus/romupdate/RomUpdateObserver;

    invoke-direct {v1}, Lcom/oplus/romupdate/RomUpdateObserver;-><init>()V

    sput-object v1, Lcom/oplus/romupdate/RomUpdateObserver;->sObserver:Lcom/oplus/romupdate/RomUpdateObserver;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/romupdate/RomUpdateObserver;->sObserver:Lcom/oplus/romupdate/RomUpdateObserver;

    return-object v0
.end method


# virtual methods
.method public whitelist init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    iget-boolean v0, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    const-string v0, "RomUpdateObserver"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mInitDone:Z

    .line 70
    iput-object p1, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oplus/romupdate/RomUpdateObserver$1;

    invoke-direct {v2, p0}, Lcom/oplus/romupdate/RomUpdateObserver$1;-><init>(Lcom/oplus/romupdate/RomUpdateObserver;)V

    const/4 v3, 0x0

    const-string v4, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method public whitelist isRegister(Ljava/lang/String;Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;)Z
    .locals 4
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "RomUpdateObserver"

    const-string v2, "isRegister failed. filterName is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v1

    .line 160
    :cond_0
    if-nez p2, :cond_1

    .line 161
    const-string v0, "RomUpdateObserver"

    const-string/jumbo v2, "unregister failed. listener is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v1

    .line 164
    :cond_1
    const/4 v0, 0x0

    .line 165
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mRegisterMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mRegisterMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mRegisterMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 169
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    const-string v1, "RomUpdateObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is register : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v0

    .line 169
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public whitelist register(Ljava/lang/String;Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;)V
    .locals 3
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "RomUpdateObserver"

    const-string v1, "register failed. filterName is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 112
    :cond_0
    if-nez p2, :cond_1

    .line 113
    const-string v0, "RomUpdateObserver"

    const-string v1, "register failed. listener is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 116
    :cond_1
    const-string v0, "RomUpdateObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " register."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mRegisterMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mRegisterMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    iget-object v1, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mRegisterMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 120
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;>;"
    :cond_2
    goto :goto_0

    .line 124
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v2, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mRegisterMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;>;"
    :goto_0
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist unregister(Ljava/lang/String;Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;)V
    .locals 6
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "RomUpdateObserver"

    const-string/jumbo v1, "unregister failed. filterName is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 136
    :cond_0
    if-nez p2, :cond_1

    .line 137
    const-string v0, "RomUpdateObserver"

    const-string/jumbo v1, "unregister failed. listener is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 140
    :cond_1
    const-string v0, "RomUpdateObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try to remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mRegisterMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mRegisterMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    iget-object v1, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mRegisterMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 144
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 145
    .local v2, "ret":Z
    const-string v3, "RomUpdateObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    iget-object v3, p0, Lcom/oplus/romupdate/RomUpdateObserver;->mRegisterMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;>;"
    .end local v2    # "ret":Z
    :cond_2
    goto :goto_0

    .line 150
    :cond_3
    const-string v1, "RomUpdateObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not register."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
