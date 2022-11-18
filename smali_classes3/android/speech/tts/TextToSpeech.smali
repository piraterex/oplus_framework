.class public Landroid/speech/tts/TextToSpeech;
.super Ljava/lang/Object;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeech$EngineInfo;,
        Landroid/speech/tts/TextToSpeech$Action;,
        Landroid/speech/tts/TextToSpeech$SystemConnection;,
        Landroid/speech/tts/TextToSpeech$DirectConnection;,
        Landroid/speech/tts/TextToSpeech$Connection;,
        Landroid/speech/tts/TextToSpeech$Engine;,
        Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;,
        Landroid/speech/tts/TextToSpeech$OnInitListener;,
        Landroid/speech/tts/TextToSpeech$Error;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_TTS_QUEUE_PROCESSING_COMPLETED:Ljava/lang/String; = "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

.field private static final blacklist DEBUG:Z = false

.field public static final whitelist ERROR:I = -0x1

.field public static final whitelist ERROR_INVALID_REQUEST:I = -0x8

.field public static final whitelist ERROR_NETWORK:I = -0x6

.field public static final whitelist ERROR_NETWORK_TIMEOUT:I = -0x7

.field public static final whitelist ERROR_NOT_INSTALLED_YET:I = -0x9

.field public static final whitelist ERROR_OUTPUT:I = -0x5

.field public static final whitelist ERROR_SERVICE:I = -0x4

.field public static final whitelist ERROR_SYNTHESIS:I = -0x3

.field public static final whitelist LANG_AVAILABLE:I = 0x0

.field public static final whitelist LANG_COUNTRY_AVAILABLE:I = 0x1

.field public static final whitelist LANG_COUNTRY_VAR_AVAILABLE:I = 0x2

.field public static final whitelist LANG_MISSING_DATA:I = -0x1

.field public static final whitelist LANG_NOT_SUPPORTED:I = -0x2

.field public static final whitelist QUEUE_ADD:I = 0x1

.field static final greylist-max-o QUEUE_DESTROY:I = 0x2

.field public static final whitelist QUEUE_FLUSH:I = 0x0

.field public static final whitelist STOPPED:I = -0x2

.field public static final whitelist SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TextToSpeech"


# instance fields
.field private greylist mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private volatile greylist mCurrentEngine:Ljava/lang/String;

.field private final greylist-max-o mEarcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private final blacklist mInitExecutor:Ljava/util/concurrent/Executor;

.field private greylist mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final blacklist mIsSystem:Z

.field private final greylist-max-o mParams:Landroid/os/Bundle;

.field private greylist-max-o mRequestedEngine:Ljava/lang/String;

.field private greylist-max-o mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

.field private final greylist-max-o mStartLock:Ljava/lang/Object;

.field private final greylist-max-o mUseFallback:Z

.field private volatile greylist-max-o mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private final greylist-max-o mUtterances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/speech/tts/TextToSpeech;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParams(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceConnection(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$Connection;
    .locals 0

    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartLock(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUtteranceProgressListener(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 0

    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectingServiceConnection(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)V
    .locals 0

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceConnection(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)V
    .locals 0

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchOnInit(Landroid/speech/tts/TextToSpeech;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitTts(Landroid/speech/tts/TextToSpeech;)I
    .locals 0

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 741
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;
    .param p3, "engine"    # Ljava/lang/String;

    .line 757
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 758
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;
    .param p3, "engine"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "useFallback"    # Z

    .line 768
    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 770
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "initListener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;
    .param p4, "engine"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "useFallback"    # Z
    .param p7, "isSystem"    # Z

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    .line 721
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 780
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    .line 781
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech;->mInitExecutor:Ljava/util/concurrent/Executor;

    .line 782
    iput-object p3, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 783
    iput-object p4, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    .line 784
    iput-boolean p6, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    .line 786
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    .line 787
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    .line 788
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 790
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-direct {v0, p1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 792
    iput-boolean p7, p0, Landroid/speech/tts/TextToSpeech;->mIsSystem:Z

    .line 794
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    .line 795
    return-void
.end method

.method private greylist-max-o connectToEngine(Ljava/lang/String;)Z
    .locals 5
    .param p1, "engine"    # Ljava/lang/String;

    .line 869
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mIsSystem:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 870
    new-instance v0, Landroid/speech/tts/TextToSpeech$SystemConnection;

    invoke-direct {v0, p0, v1}, Landroid/speech/tts/TextToSpeech$SystemConnection;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$SystemConnection-IA;)V

    .local v0, "connection":Landroid/speech/tts/TextToSpeech$Connection;
    goto :goto_0

    .line 872
    .end local v0    # "connection":Landroid/speech/tts/TextToSpeech$Connection;
    :cond_0
    new-instance v0, Landroid/speech/tts/TextToSpeech$DirectConnection;

    invoke-direct {v0, p0, v1}, Landroid/speech/tts/TextToSpeech$DirectConnection;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$DirectConnection-IA;)V

    .line 875
    .restart local v0    # "connection":Landroid/speech/tts/TextToSpeech$Connection;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech$Connection;->connect(Ljava/lang/String;)Z

    move-result v1

    .line 876
    .local v1, "bound":Z
    const-string v2, "TextToSpeech"

    if-nez v1, :cond_1

    .line 877
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const/4 v2, 0x0

    return v2

    .line 880
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sucessfully bound to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    .line 882
    const/4 v2, 0x1

    return v2
.end method

.method private greylist-max-o convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1949
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1950
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1951
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "streamType"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1952
    const-string/jumbo v1, "sessionId"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1953
    const-string/jumbo v1, "utteranceId"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1954
    const-string/jumbo v1, "volume"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1955
    const-string/jumbo v1, "pan"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1958
    const-string/jumbo v1, "networkTts"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1959
    const-string v1, "embeddedTts"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1960
    const-string/jumbo v1, "networkTimeoutMs"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1961
    const-string/jumbo v1, "networkRetriesCount"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1966
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1967
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1968
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1969
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1970
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1975
    :cond_1
    return-object v0

    .line 1977
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2075
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2076
    .local v0, "valueString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2078
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 2079
    .local v1, "value":F
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2082
    .end local v1    # "value":F
    goto :goto_0

    .line 2080
    :catch_0
    move-exception v1

    .line 2084
    :cond_0
    :goto_0
    return-void
.end method

.method private greylist-max-o copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2063
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2064
    .local v0, "valueString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2066
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2067
    .local v1, "value":I
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2070
    .end local v1    # "value":I
    goto :goto_0

    .line 2068
    :catch_0
    move-exception v1

    .line 2072
    :cond_0
    :goto_0
    return-void
.end method

.method private greylist-max-o copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2056
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2057
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2058
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    :cond_0
    return-void
.end method

.method private greylist-max-o dispatchOnInit(I)V
    .locals 2
    .param p1, "result"    # I

    .line 887
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda1;-><init>(Landroid/speech/tts/TextToSpeech;I)V

    .line 896
    .local v0, "onInitCommand":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mInitExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    .line 897
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 899
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 901
    :goto_0
    return-void
.end method

.method private greylist-max-o getCallerIdentity()Landroid/os/IBinder;
    .locals 1

    .line 904
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech$Connection;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getMaxSpeechInputLength()I
    .locals 1

    .line 2509
    const/16 v0, 0xfa0

    return v0
.end method

.method private greylist-max-o getParams(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "params"    # Landroid/os/Bundle;

    .line 1981
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1982
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1983
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1985
    const-string/jumbo v1, "streamType"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1986
    const-string/jumbo v1, "sessionId"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1987
    const-string/jumbo v1, "utteranceId"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyStringBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1988
    const-string/jumbo v1, "volume"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1989
    const-string/jumbo v1, "pan"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1992
    const-string/jumbo v1, "networkTts"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1993
    const-string v1, "embeddedTts"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1994
    const-string/jumbo v1, "networkTimeoutMs"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1995
    const-string/jumbo v1, "networkRetriesCount"

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 1997
    return-object v0

    .line 1999
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method private greylist-max-o getVoice(Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;
    .locals 6
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .param p2, "voiceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1754
    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object v0

    .line 1755
    .local v0, "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    const/4 v1, 0x0

    const-string v2, "TextToSpeech"

    if-nez v0, :cond_0

    .line 1756
    const-string/jumbo v3, "getVoices returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    return-object v1

    .line 1759
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/speech/tts/Voice;

    .line 1760
    .local v4, "voice":Landroid/speech/tts/Voice;
    invoke-virtual {v4}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1761
    return-object v4

    .line 1763
    .end local v4    # "voice":Landroid/speech/tts/Voice;
    :cond_1
    goto :goto_0

    .line 1764
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find voice "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in voice list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    return-object v1
.end method

.method private greylist-max-o initTts()I
    .locals 6

    .line 820
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    .line 821
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v4, v0}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 824
    return v1

    .line 825
    :cond_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    if-nez v0, :cond_2

    .line 826
    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 827
    invoke-direct {p0, v3}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    .line 828
    return v3

    .line 830
    :cond_1
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    if-nez v0, :cond_2

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested engine not installed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeech"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 833
    invoke-direct {p0, v3}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    .line 834
    return v3

    .line 839
    :cond_2
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "defaultEngine":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 841
    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 842
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 843
    return v1

    .line 849
    :cond_3
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v4}, Landroid/speech/tts/TtsEngines;->getHighestRankedEngineName()Ljava/lang/String;

    move-result-object v4

    .line 850
    .local v4, "highestRanked":Ljava/lang/String;
    if-eqz v4, :cond_4

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 851
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 852
    invoke-direct {p0, v4}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 853
    iput-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 854
    return v1

    .line 862
    :cond_4
    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 863
    invoke-direct {p0, v3}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    .line 864
    return v3
.end method

.method static synthetic blacklist lambda$getAvailableLanguages$11(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/HashSet;
    .locals 5
    .param p0, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1656
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object v0

    .line 1657
    .local v0, "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    if-nez v0, :cond_0

    .line 1658
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1

    .line 1660
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1661
    .local v1, "locales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/speech/tts/Voice;

    .line 1662
    .local v3, "voice":Landroid/speech/tts/Voice;
    invoke-virtual {v3}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1663
    .end local v3    # "voice":Landroid/speech/tts/Voice;
    goto :goto_0

    .line 1664
    :cond_1
    return-object v1
.end method

.method static synthetic blacklist lambda$getDefaultLanguage$8(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Locale;
    .locals 5
    .param p0, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1513
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->getClientDefaultLanguage()[Ljava/lang/String;

    move-result-object v0

    .line 1515
    .local v0, "defaultLanguage":[Ljava/lang/String;
    new-instance v1, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$getDefaultVoice$15(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;
    .locals 11
    .param p0, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1776
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->getClientDefaultLanguage()[Ljava/lang/String;

    move-result-object v0

    .line 1778
    .local v0, "defaultLanguage":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_8

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_2

    .line 1782
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 1783
    .local v2, "language":Ljava/lang/String;
    array-length v3, v0

    const-string v4, ""

    const/4 v5, 0x1

    if-le v3, v5, :cond_1

    aget-object v3, v0, v5

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 1784
    .local v3, "country":Ljava/lang/String;
    :goto_0
    array-length v5, v0

    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    aget-object v4, v0, v6

    .line 1787
    .local v4, "variant":Ljava/lang/String;
    :cond_2
    invoke-interface {p0, v2, v3, v4}, Landroid/speech/tts/ITextToSpeechService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1788
    .local v5, "result":I
    if-gez v5, :cond_3

    .line 1790
    return-object v1

    .line 1794
    :cond_3
    invoke-interface {p0, v2, v3, v4}, Landroid/speech/tts/ITextToSpeechService;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1795
    .local v6, "voiceName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1796
    return-object v1

    .line 1800
    :cond_4
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object v7

    .line 1801
    .local v7, "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    if-nez v7, :cond_5

    .line 1802
    return-object v1

    .line 1804
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/speech/tts/Voice;

    .line 1805
    .local v9, "voice":Landroid/speech/tts/Voice;
    invoke-virtual {v9}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1806
    return-object v9

    .line 1808
    .end local v9    # "voice":Landroid/speech/tts/Voice;
    :cond_6
    goto :goto_1

    .line 1809
    :cond_7
    return-object v1

    .line 1779
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "country":Ljava/lang/String;
    .end local v4    # "variant":Ljava/lang/String;
    .end local v5    # "result":I
    .end local v6    # "voiceName":Ljava/lang/String;
    .end local v7    # "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    :cond_8
    :goto_2
    const-string v2, "TextToSpeech"

    const-string/jumbo v3, "service.getClientDefaultLanguage() returned empty array"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    return-object v1
.end method

.method static synthetic blacklist lambda$getFeatures$5(Ljava/util/Locale;Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Set;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1377
    const/4 v0, 0x0

    .line 1379
    .local v0, "features":[Ljava/lang/String;
    nop

    .line 1380
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 1379
    invoke-interface {p1, v2, v3, v4}, Landroid/speech/tts/ITextToSpeechService;->getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1385
    nop

    .line 1387
    if-eqz v0, :cond_0

    .line 1388
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1389
    .local v1, "featureSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1390
    return-object v1

    .line 1392
    .end local v1    # "featureSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-object v1

    .line 1381
    :catch_0
    move-exception v2

    .line 1382
    .local v2, "e":Ljava/util/MissingResourceException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t retrieve 3 letter ISO 639-2/T language and/or ISO 3166 country code for locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TextToSpeech"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1384
    return-object v1
.end method

.method static synthetic blacklist lambda$getVoices$12(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/HashSet;
    .locals 2
    .param p0, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1679
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object v0

    .line 1680
    .local v0, "voices":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    new-instance v1, Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_0
    return-object v1
.end method

.method static synthetic blacklist lambda$isLanguageAvailable$16(Ljava/util/Locale;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 7
    .param p0, "loc"    # Ljava/util/Locale;
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1826
    const-string v0, "TextToSpeech"

    const/4 v1, 0x0

    .local v1, "language":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1829
    .local v2, "country":Ljava/lang/String;
    const/4 v3, -0x2

    :try_start_0
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v4

    .line 1833
    nop

    .line 1836
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1840
    .end local v2    # "country":Ljava/lang/String;
    .local v0, "country":Ljava/lang/String;
    nop

    .line 1842
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Landroid/speech/tts/ITextToSpeechService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 1837
    .end local v0    # "country":Ljava/lang/String;
    .restart local v2    # "country":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1838
    .local v4, "e":Ljava/util/MissingResourceException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t retrieve ISO 3166 country code for locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1839
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1830
    .end local v4    # "e":Ljava/util/MissingResourceException;
    :catch_1
    move-exception v4

    .line 1831
    .restart local v4    # "e":Ljava/util/MissingResourceException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1832
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isSpeaking$6(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1406
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->isSpeaking()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceId"    # I

    .line 1151
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1152
    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1153
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1154
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1155
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1151
    return-object v0
.end method

.method private greylist-max-o runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action<",
            "TR;>;TR;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 803
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .locals 7
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "reconnect"    # Z
    .param p5, "onlyEstablishedConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action<",
            "TR;>;TR;",
            "Ljava/lang/String;",
            "ZZ)TR;"
        }
    .end annotation

    .line 808
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 809
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    if-nez v1, :cond_0

    .line 810
    const-string v1, "TextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: not bound to TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    monitor-exit v0

    return-object p2

    .line 813
    :cond_0
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/speech/tts/TextToSpeech$Connection;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 815
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o runActionNoReconnect(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 6
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "onlyEstablishedConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action<",
            "TR;>;TR;",
            "Ljava/lang/String;",
            "Z)TR;"
        }
    .end annotation

    .line 799
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 2029
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2030
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2031
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2032
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Synthesis request paramter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " containst value  with invalid type. Should be a Boolean or String"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeech"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    const/4 v0, 0x0

    return v0

    .line 2038
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 2043
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2044
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 2045
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 2046
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Synthesis request paramter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " containst value  with invalid type. Should be a Float or a Double"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeech"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    const/4 v0, 0x0

    return v0

    .line 2052
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 2004
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2005
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2006
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 2007
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Synthesis request paramter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " containst value  with invalid type. Should be an Integer or a Long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeech"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    const/4 v0, 0x0

    return v0

    .line 2013
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o verifyStringBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 2017
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2018
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2019
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Synthesis request paramter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " containst value  with invalid type. Should be a String"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeech"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    const/4 v0, 0x0

    return v0

    .line 2025
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist addEarcon(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 2
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1144
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1145
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist addEarcon(Ljava/lang/String;Ljava/io/File;)I
    .locals 1
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 1126
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TextToSpeech;->addEarcon(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public whitelist addEarcon(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1108
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TextToSpeech;->addEarcon(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public whitelist addEarcon(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "resourceId"    # I

    .line 1085
    invoke-direct {p0, p2, p3}, Landroid/speech/tts/TextToSpeech;->makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TextToSpeech;->addEarcon(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public whitelist addSpeech(Ljava/lang/CharSequence;Landroid/net/Uri;)I
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1053
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1054
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1056
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist addSpeech(Ljava/lang/CharSequence;Ljava/io/File;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "file"    # Ljava/io/File;

    .line 1035
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TextToSpeech;->addSpeech(Ljava/lang/CharSequence;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public whitelist addSpeech(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "resourceId"    # I

    .line 999
    invoke-direct {p0, p2, p3}, Landroid/speech/tts/TextToSpeech;->makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TextToSpeech;->addSpeech(Ljava/lang/CharSequence;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public whitelist addSpeech(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .line 1017
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TextToSpeech;->addSpeech(Ljava/lang/CharSequence;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public whitelist addSpeech(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "resourceId"    # I

    .line 968
    invoke-direct {p0, p2, p3}, Landroid/speech/tts/TextToSpeech;->makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/speech/tts/TextToSpeech;->addSpeech(Ljava/lang/CharSequence;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public whitelist areDefaultsEnforced()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2153
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAvailableLanguages()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 1655
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda13;-><init>()V

    const/4 v1, 0x0

    const-string v2, "getAvailableLanguages"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public greylist getCurrentEngine()Ljava/lang/String;
    .locals 1

    .line 1495
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDefaultEngine()Ljava/lang/String;
    .locals 1

    .line 2143
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefaultLanguage()Ljava/util/Locale;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1512
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda6;-><init>()V

    const/4 v1, 0x0

    const-string v2, "getDefaultLanguage"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist getDefaultVoice()Landroid/speech/tts/Voice;
    .locals 3

    .line 1774
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda14;-><init>()V

    const/4 v1, 0x0

    const-string v2, "getDefaultVoice"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/Voice;

    return-object v0
.end method

.method public whitelist getEngines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/speech/tts/TextToSpeech$EngineInfo;",
            ">;"
        }
    .end annotation

    .line 2162
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFeatures(Ljava/util/Locale;)Ljava/util/Set;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1376
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda11;-><init>(Ljava/util/Locale;)V

    const/4 v1, 0x0

    const-string v2, "getFeatures"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getLanguage()Ljava/util/Locale;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1641
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda0;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    const-string v2, "getLanguage"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist getVoice()Landroid/speech/tts/Voice;
    .locals 3

    .line 1736
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda10;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    const-string/jumbo v2, "getVoice"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/Voice;

    return-object v0
.end method

.method public whitelist getVoices()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation

    .line 1678
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda12;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "getVoices"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public whitelist isLanguageAvailable(Ljava/util/Locale;)I
    .locals 3
    .param p1, "loc"    # Ljava/util/Locale;

    .line 1825
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda2;-><init>(Ljava/util/Locale;)V

    .line 1843
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1825
    const-string/jumbo v2, "isLanguageAvailable"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist isSpeaking()Z
    .locals 3

    .line 1405
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda17;-><init>()V

    .line 1407
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1405
    const-string/jumbo v2, "isSpeaking"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$dispatchOnInit$0$android-speech-tts-TextToSpeech(I)V
    .locals 2
    .param p1, "result"    # I

    .line 888
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 889
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    if-eqz v1, :cond_0

    .line 890
    invoke-interface {v1, p1}, Landroid/speech/tts/TextToSpeech$OnInitListener;->onInit(I)V

    .line 891
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 893
    :cond_0
    monitor-exit v0

    .line 894
    return-void

    .line 893
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$getLanguage$10$android-speech-tts-TextToSpeech(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Locale;
    .locals 5
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1644
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "language"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1645
    .local v0, "lang":Ljava/lang/String;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v3, "country"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1646
    .local v1, "country":Ljava/lang/String;
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v4, "variant"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1647
    .local v2, "variant":Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method synthetic blacklist lambda$getVoice$14$android-speech-tts-TextToSpeech(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;
    .locals 3
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1737
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "voiceName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1738
    .local v0, "voiceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1739
    const/4 v1, 0x0

    return-object v1

    .line 1741
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/speech/tts/TextToSpeech;->getVoice(Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;

    move-result-object v1

    return-object v1
.end method

.method synthetic blacklist lambda$playEarcon$3$android-speech-tts-TextToSpeech(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 7
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "utteranceId"    # Ljava/lang/String;
    .param p5, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1259
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1260
    .local v0, "earconUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 1261
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 1263
    :cond_0
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v2

    .line 1264
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 1263
    move-object v1, p5

    move-object v3, v0

    move v4, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/speech/tts/ITextToSpeechService;->playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method synthetic blacklist lambda$playSilentUtterance$4$android-speech-tts-TextToSpeech(JILjava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 6
    .param p1, "durationInMs"    # J
    .param p3, "queueMode"    # I
    .param p4, "utteranceId"    # Ljava/lang/String;
    .param p5, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1320
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v1

    move-object v0, p5

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService;->playSilence(Landroid/os/IBinder;JILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$setLanguage$9$android-speech-tts-TextToSpeech(Ljava/util/Locale;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 12
    .param p1, "loc"    # Ljava/util/Locale;
    .param p2, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1537
    const-string v0, "Couldn\'t retrieve ISO 3166 country code for locale: "

    const-string v1, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    const-string v2, "TextToSpeech"

    const/4 v3, -0x2

    .line 1538
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1537
    if-nez p1, :cond_0

    .line 1538
    return-object v3

    .line 1540
    :cond_0
    const/4 v4, 0x0

    .local v4, "language":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1542
    .local v5, "country":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v4, v6

    .line 1546
    nop

    .line 1549
    :try_start_1
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v6

    .line 1553
    nop

    .line 1555
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    .line 1562
    .local v6, "variant":Ljava/lang/String;
    invoke-interface {p2, v4, v5, v6}, Landroid/speech/tts/ITextToSpeechService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1563
    .local v7, "result":I
    if-ltz v7, :cond_4

    .line 1565
    invoke-interface {p2, v4, v5, v6}, Landroid/speech/tts/ITextToSpeechService;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1566
    .local v8, "voiceName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "-"

    if-eqz v9, :cond_1

    .line 1567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find the default voice for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    return-object v3

    .line 1573
    :cond_1
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v9

    invoke-interface {p2, v9, v8}, Landroid/speech/tts/ITextToSpeechService;->loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v9

    const/4 v11, -0x1

    if-ne v9, v11, :cond_2

    .line 1574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The service claimed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was available with voice name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but loadVoice returned ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    return-object v3

    .line 1582
    :cond_2
    invoke-direct {p0, p2, v8}, Landroid/speech/tts/TextToSpeech;->getVoice(Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;

    move-result-object v9

    .line 1583
    .local v9, "voice":Landroid/speech/tts/Voice;
    if-nez v9, :cond_3

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultVoiceNameFor returned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for locale "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but getVoice returns null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    return-object v3

    .line 1589
    :cond_3
    const-string v3, ""

    .line 1591
    .local v3, "voiceLanguage":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v9}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v1

    .line 1595
    goto :goto_0

    .line 1592
    :catch_0
    move-exception v10

    .line 1593
    .local v10, "e":Ljava/util/MissingResourceException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1594
    invoke-virtual {v9}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1593
    invoke-static {v2, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1597
    .end local v10    # "e":Ljava/util/MissingResourceException;
    :goto_0
    const-string v1, ""

    .line 1599
    .local v1, "voiceCountry":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v9}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v0

    .line 1603
    goto :goto_1

    .line 1600
    :catch_1
    move-exception v10

    .line 1601
    .restart local v10    # "e":Ljava/util/MissingResourceException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1602
    invoke-virtual {v9}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1601
    invoke-static {v2, v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1604
    .end local v10    # "e":Ljava/util/MissingResourceException;
    :goto_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v2, "voiceName"

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v2, "language"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    invoke-virtual {v9}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "variant"

    invoke-virtual {v0, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    .end local v1    # "voiceCountry":Ljava/lang/String;
    .end local v3    # "voiceLanguage":Ljava/lang/String;
    .end local v8    # "voiceName":Ljava/lang/String;
    .end local v9    # "voice":Landroid/speech/tts/Voice;
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1550
    .end local v6    # "variant":Ljava/lang/String;
    .end local v7    # "result":I
    :catch_2
    move-exception v1

    .line 1551
    .local v1, "e":Ljava/util/MissingResourceException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1552
    return-object v3

    .line 1543
    .end local v1    # "e":Ljava/util/MissingResourceException;
    :catch_3
    move-exception v0

    .line 1544
    .local v0, "e":Ljava/util/MissingResourceException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1545
    return-object v3
.end method

.method synthetic blacklist lambda$setVoice$13$android-speech-tts-TextToSpeech(Landroid/speech/tts/Voice;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 7
    .param p1, "voice"    # Landroid/speech/tts/Voice;
    .param p2, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1696
    const-string v0, "TextToSpeech"

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Landroid/speech/tts/ITextToSpeechService;->loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v1

    .line 1697
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 1698
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "voiceName"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    const-string v2, ""

    .line 1704
    .local v2, "language":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 1708
    goto :goto_0

    .line 1705
    :catch_0
    move-exception v3

    .line 1706
    .local v3, "e":Ljava/util/MissingResourceException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1707
    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1706
    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1710
    .end local v3    # "e":Ljava/util/MissingResourceException;
    :goto_0
    const-string v3, ""

    .line 1712
    .local v3, "country":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v0

    .line 1716
    goto :goto_1

    .line 1713
    :catch_1
    move-exception v4

    .line 1714
    .local v4, "e":Ljava/util/MissingResourceException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t retrieve ISO 3166 country code for locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1715
    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1714
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1717
    .end local v4    # "e":Ljava/util/MissingResourceException;
    :goto_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v4, "language"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v4, "country"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "variant"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "country":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$shutdown$1$android-speech-tts-TextToSpeech(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 2
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 924
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/speech/tts/ITextToSpeechService;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    .line 925
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/speech/tts/ITextToSpeechService;->stop(Landroid/os/IBinder;)I

    .line 926
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech$Connection;->disconnect()V

    .line 934
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    .line 935
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 936
    return-object v1
.end method

.method synthetic blacklist lambda$speak$2$android-speech-tts-TextToSpeech(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "queueMode"    # I
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "utteranceId"    # Ljava/lang/String;
    .param p5, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1189
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1190
    .local v0, "utteranceUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 1191
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v2

    .line 1192
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 1191
    move-object v1, p5

    move-object v3, v0

    move v4, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/speech/tts/ITextToSpeechService;->playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 1194
    :cond_0
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    move-object v2, p5

    move-object v4, p1

    move v5, p2

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/speech/tts/ITextToSpeechService;->speak(Landroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method synthetic blacklist lambda$stop$7$android-speech-tts-TextToSpeech(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 1
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1418
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/speech/tts/ITextToSpeechService;->stop(Landroid/os/IBinder;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$synthesizeToFile$17$android-speech-tts-TextToSpeech(Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "utteranceId"    # Ljava/lang/String;
    .param p5, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1868
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v1

    .line 1869
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 1868
    move-object v0, p5

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService;->synthesizeToFileDescriptor(Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist playEarcon(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 7
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "utteranceId"    # Ljava/lang/String;

    .line 1258
    new-instance v6, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda3;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V

    .line 1265
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1258
    const-string/jumbo v1, "playEarcon"

    invoke-direct {p0, v6, v0, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 2
    .param p1, "earcon"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1297
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 1298
    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "utteranceId"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1297
    :goto_0
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/speech/tts/TextToSpeech;->playEarcon(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist playSilence(JILjava/util/HashMap;)I
    .locals 1
    .param p1, "durationInMs"    # J
    .param p3, "queueMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1352
    .local p4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 1353
    if-nez p4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "utteranceId"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1352
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/speech/tts/TextToSpeech;->playSilentUtterance(JILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist playSilentUtterance(JILjava/lang/String;)I
    .locals 7
    .param p1, "durationInMs"    # J
    .param p3, "queueMode"    # I
    .param p4, "utteranceId"    # Ljava/lang/String;

    .line 1319
    new-instance v6, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda9;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda9;-><init>(Landroid/speech/tts/TextToSpeech;JILjava/lang/String;)V

    .line 1322
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1319
    const-string/jumbo v1, "playSilentUtterance"

    invoke-direct {p0, v6, v0, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)I
    .locals 3
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 1479
    if-eqz p1, :cond_0

    .line 1480
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1481
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v2, "audioAttributes"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1483
    monitor-exit v0

    .line 1484
    const/4 v0, 0x0

    return v0

    .line 1483
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1486
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist setEngineByPackageName(Ljava/lang/String;)I
    .locals 1
    .param p1, "enginePackageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2132
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    .line 2133
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    move-result v0

    return v0
.end method

.method public whitelist setLanguage(Ljava/util/Locale;)I
    .locals 3
    .param p1, "loc"    # Ljava/util/Locale;

    .line 1536
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda7;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V

    .line 1610
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1536
    const-string/jumbo v2, "setLanguage"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I
    .locals 1
    .param p1, "listener"    # Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2098
    invoke-static {p1}, Landroid/speech/tts/UtteranceProgressListener;->from(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 2099
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I
    .locals 1
    .param p1, "listener"    # Landroid/speech/tts/UtteranceProgressListener;

    .line 2113
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 2114
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setPitch(F)I
    .locals 4
    .param p1, "pitch"    # F

    .line 1458
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1459
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1460
    .local v0, "intPitch":I
    if-lez v0, :cond_0

    .line 1461
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1462
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v3, "pitch"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1463
    monitor-exit v1

    .line 1464
    const/4 v1, 0x0

    return v1

    .line 1463
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1467
    .end local v0    # "intPitch":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist setSpeechRate(F)I
    .locals 4
    .param p1, "speechRate"    # F

    .line 1434
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1435
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1436
    .local v0, "intRate":I
    if-lez v0, :cond_0

    .line 1437
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1438
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v3, "rate"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1439
    monitor-exit v1

    .line 1440
    const/4 v1, 0x0

    return v1

    .line 1439
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1443
    .end local v0    # "intRate":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist setVoice(Landroid/speech/tts/Voice;)I
    .locals 3
    .param p1, "voice"    # Landroid/speech/tts/Voice;

    .line 1695
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda8;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/Voice;)V

    .line 1722
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1695
    const-string/jumbo v2, "setVoice"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist shutdown()V
    .locals 4

    .line 914
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 916
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech$Connection;->disconnect()V

    .line 917
    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    .line 918
    monitor-exit v0

    return-void

    .line 920
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda15;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const-string/jumbo v1, "shutdown"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Landroid/speech/tts/TextToSpeech;->runActionNoReconnect(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    .line 938
    return-void

    .line 920
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "queueMode"    # I
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "utteranceId"    # Ljava/lang/String;

    .line 1188
    new-instance v6, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda16;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda16;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)V

    .line 1197
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1188
    const-string/jumbo v1, "speak"

    invoke-direct {p0, v6, v0, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist speak(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "queueMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1229
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 1230
    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "utteranceId"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1229
    :goto_0
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist stop()I
    .locals 3

    .line 1417
    new-instance v0, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda4;-><init>(Landroid/speech/tts/TextToSpeech;)V

    .line 1419
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1417
    const-string/jumbo v2, "stop"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "utteranceId"    # Ljava/lang/String;

    .line 1867
    new-instance v6, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda5;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1870
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1867
    const-string/jumbo v1, "synthesizeToFile"

    invoke-direct {p0, v6, v0, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "utteranceId"    # Ljava/lang/String;

    .line 1894
    const-string v0, " failed"

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "TextToSpeech"

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t write to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    return v2

    .line 1899
    :cond_0
    const/high16 v1, 0x2c000000

    :try_start_0
    invoke-static {p3, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1904
    .local v1, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual {p0, p1, p2, v1, p4}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result v4

    .line 1905
    .local v4, "returnValue":I
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1906
    nop

    .line 1907
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1906
    :cond_1
    return v4

    .line 1898
    .end local v4    # "returnValue":I
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/speech/tts/TextToSpeech;
    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "params":Landroid/os/Bundle;
    .end local p3    # "file":Ljava/io/File;
    .end local p4    # "utteranceId":Ljava/lang/String;
    :cond_2
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1910
    .end local v1    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/speech/tts/TextToSpeech;
    .restart local p1    # "text":Ljava/lang/CharSequence;
    .restart local p2    # "params":Landroid/os/Bundle;
    .restart local p3    # "file":Ljava/io/File;
    .restart local p4    # "utteranceId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1911
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1912
    return v2

    .line 1907
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1908
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1909
    return v2
.end method

.method public whitelist synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1944
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Landroid/speech/tts/TextToSpeech;->convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1945
    const-string/jumbo v2, "utteranceId"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1944
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
