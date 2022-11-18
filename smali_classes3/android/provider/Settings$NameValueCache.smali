.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final greylist-max-o SELECT_VALUE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final blacklist mAllFields:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallDeleteCommand:Ljava/lang/String;

.field private final greylist-max-o mCallGetCommand:Ljava/lang/String;

.field private final blacklist mCallListCommand:Ljava/lang/String;

.field private final blacklist mCallSetAllCommand:Ljava/lang/String;

.field private final greylist-max-o mCallSetCommand:Ljava/lang/String;

.field private greylist-max-o mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

.field private final greylist mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

.field private final blacklist mReadableFields:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUri:Landroid/net/Uri;

.field private final blacklist mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 2950
    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "getCommand"    # Ljava/lang/String;
    .param p3, "setCommand"    # Ljava/lang/String;
    .param p4, "deleteCommand"    # Ljava/lang/String;
    .param p5, "providerHolder"    # Landroid/provider/Settings$ContentProviderHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$ContentProviderHolder;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 2981
    .local p6, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    .line 2983
    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "getCommand"    # Ljava/lang/String;
    .param p3, "setCommand"    # Ljava/lang/String;
    .param p4, "deleteCommand"    # Ljava/lang/String;
    .param p5, "listCommand"    # Ljava/lang/String;
    .param p6, "setAllCommand"    # Ljava/lang/String;
    .param p7, "providerHolder"    # Landroid/provider/Settings$ContentProviderHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$ContentProviderHolder;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 2987
    .local p8, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2957
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    .line 2988
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 2989
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 2990
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 2991
    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;

    .line 2992
    iput-object p5, p0, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    .line 2993
    iput-object p6, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    .line 2994
    iput-object p7, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 2995
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    .line 2996
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    .line 2997
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 2998
    invoke-static {p8, v1, v0, v2}, Landroid/provider/Settings;->-$$Nest$smgetPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 3000
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;Landroid/provider/Settings$NameValueCache-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    return-void
.end method

.method private static blacklist isCallerExemptFromReadableRestriction()Z
    .locals 6

    .line 3291
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3292
    return v1

    .line 3294
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_1

    .line 3295
    return v1

    .line 3297
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3298
    .local v0, "application":Landroid/app/Application;
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 3301
    :cond_2
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 3302
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    move v4, v2

    .line 3304
    .local v4, "isTestOnly":Z
    :goto_0
    if-nez v4, :cond_5

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v5

    if-nez v5, :cond_5

    .line 3305
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    :goto_1
    nop

    .line 3304
    :goto_2
    return v1

    .line 3299
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "isTestOnly":Z
    :cond_6
    :goto_3
    return v2
.end method


# virtual methods
.method public greylist-max-o clearGenerationTrackerForTest()V
    .locals 1

    .line 3455
    monitor-enter p0

    .line 3456
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_0

    .line 3457
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3459
    :cond_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3460
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3461
    monitor-exit p0

    .line 3462
    return-void

    .line 3461
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist deleteStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 3051
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3052
    .local v0, "arg":Landroid/os/Bundle;
    const-string v1, "_user"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3053
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 3054
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v3}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v3

    .line 3055
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;

    .line 3054
    move-object v5, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3059
    nop

    .line 3060
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    const/4 v0, 0x1

    return v0

    .line 3056
    :catch_0
    move-exception v0

    .line 3057
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t delete key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3058
    const/4 v1, 0x0

    return v1
.end method

.method public greylist getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 24
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 3070
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-static {}, Landroid/provider/Settings$NameValueCache;->isCallerExemptFromReadableRestriction()Z

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3071
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3080
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3081
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3082
    .local v0, "maxTargetSdk":I
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    .line 3083
    .local v2, "application":Landroid/app/Application;
    if-eqz v2, :cond_0

    .line 3084
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3085
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-gt v3, v0, :cond_0

    move v3, v10

    goto :goto_0

    :cond_0
    move v3, v11

    .line 3087
    .local v3, "targetSdkCheckOk":Z
    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    .line 3088
    :cond_1
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Settings key: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> is only readable to apps with targetSdkVersion lower than or equal to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3072
    .end local v0    # "maxTargetSdk":I
    .end local v2    # "application":Landroid/app/Application;
    .end local v3    # "targetSdkCheckOk":Z
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings key: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is not readable. From S+, settings keys annotated with @hide are restricted to system_server and system apps only, unless they are annotated with @Readable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3098
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ne v9, v0, :cond_4

    move v0, v10

    goto :goto_2

    :cond_4
    move v0, v11

    :goto_2
    move v12, v0

    .line 3099
    .local v12, "isSelf":Z
    const/4 v2, -0x1

    .line 3100
    .local v2, "currentGeneration":I
    const/4 v13, 0x0

    if-eqz v12, :cond_9

    .line 3101
    monitor-enter p0

    .line 3102
    :try_start_0
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_8

    .line 3107
    :try_start_1
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3113
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    goto :goto_3

    .line 3114
    :cond_5
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3115
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    .line 3117
    :cond_6
    :goto_3
    :try_start_3
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_7

    .line 3118
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v0

    .line 3125
    :cond_7
    goto :goto_4

    .line 3122
    :catch_0
    move-exception v0

    .line 3123
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting: getStringForUser FD closed by unknown reason, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    iput-object v13, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3128
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_8
    :goto_4
    monitor-exit p0

    move v14, v2

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 3100
    :cond_9
    move v14, v2

    .line 3134
    .end local v2    # "currentGeneration":I
    .local v14, "currentGeneration":I
    :goto_5
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v15, p1

    invoke-virtual {v0, v15}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v22

    .line 3137
    .local v22, "cp":Landroid/content/IContentProvider;
    if-nez v22, :cond_a

    .line 3138
    const-string v0, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get provider for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    return-object v13

    .line 3147
    :cond_a
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 3149
    const/4 v0, 0x0

    .line 3150
    .local v0, "args":Landroid/os/Bundle;
    if-nez v12, :cond_b

    .line 3151
    :try_start_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    .line 3152
    const-string v2, "_user"

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v0

    goto :goto_6

    .line 3150
    :cond_b
    move-object v2, v0

    .line 3154
    .end local v0    # "args":Landroid/os/Bundle;
    .local v2, "args":Landroid/os/Bundle;
    :goto_6
    const/4 v3, 0x0

    .line 3155
    .local v3, "needsGenerationTracker":Z
    monitor-enter p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 3156
    if-eqz v12, :cond_d

    :try_start_6
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-nez v0, :cond_d

    .line 3157
    const/4 v3, 0x1

    .line 3158
    if-nez v2, :cond_c

    .line 3159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 3161
    :cond_c
    const-string v0, "_track_generation"

    invoke-virtual {v2, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v16, v2

    move/from16 v17, v3

    goto :goto_7

    .line 3168
    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :cond_d
    move-object/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "args":Landroid/os/Bundle;
    .end local v3    # "needsGenerationTracker":Z
    .local v16, "args":Landroid/os/Bundle;
    .local v17, "needsGenerationTracker":Z
    :goto_7
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 3176
    :try_start_8
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v0, v2, :cond_e

    .line 3177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    move-wide/from16 v18, v2

    .line 3179
    .local v18, "token":J
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3180
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3179
    move-object/from16 v2, v22

    move-object/from16 v6, p2

    move-object/from16 v7, v16

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 3183
    .local v0, "b":Landroid/os/Bundle;
    :try_start_a
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3184
    nop

    .line 3185
    .end local v18    # "token":J
    move-object v2, v0

    goto :goto_8

    .line 3183
    .end local v0    # "b":Landroid/os/Bundle;
    .restart local v18    # "token":J
    :catchall_2
    move-exception v0

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3184
    nop

    .end local v12    # "isSelf":Z
    .end local v14    # "currentGeneration":I
    .end local v22    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    throw v0

    .line 3186
    .end local v18    # "token":J
    .restart local v12    # "isSelf":Z
    .restart local v14    # "currentGeneration":I
    .restart local v22    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3187
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3186
    move-object/from16 v2, v22

    move-object/from16 v6, p2

    move-object/from16 v7, v16

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    move-object v2, v0

    .line 3189
    .local v2, "b":Landroid/os/Bundle;
    :goto_8
    if-eqz v2, :cond_13

    .line 3190
    const-string/jumbo v0, "value"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 3192
    .local v3, "value":Ljava/lang/String;
    if-eqz v12, :cond_12

    .line 3193
    monitor-enter p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    .line 3194
    if-eqz v17, :cond_10

    .line 3195
    :try_start_b
    const-string v0, "_track_generation"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    .line 3197
    .local v0, "array":Landroid/util/MemoryIntArray;
    const-string v4, "_generation_index"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3199
    .local v4, "index":I
    if-eqz v0, :cond_10

    if-ltz v4, :cond_10

    .line 3200
    const-string v5, "_generation"

    invoke-virtual {v2, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3208
    .local v5, "generation":I
    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v6, :cond_f

    .line 3209
    invoke-virtual {v6}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3211
    :cond_f
    new-instance v6, Landroid/provider/Settings$GenerationTracker;

    new-instance v7, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1}, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda1;-><init>(Landroid/provider/Settings$NameValueCache;)V

    invoke-direct {v6, v0, v4, v5, v7}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V

    iput-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3225
    move v6, v5

    move v14, v6

    .line 3228
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .end local v4    # "index":I
    .end local v5    # "generation":I
    :cond_10
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_11

    .line 3229
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v14, v0, :cond_11

    .line 3230
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3232
    :cond_11
    monitor-exit p0

    goto :goto_9

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .end local v12    # "isSelf":Z
    .end local v14    # "currentGeneration":I
    .end local v22    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    :try_start_c
    throw v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1

    .line 3238
    .restart local v12    # "isSelf":Z
    .restart local v14    # "currentGeneration":I
    .restart local v22    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :cond_12
    :goto_9
    return-object v3

    .line 3245
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "value":Ljava/lang/String;
    .end local v16    # "args":Landroid/os/Bundle;
    .end local v17    # "needsGenerationTracker":Z
    :cond_13
    goto :goto_b

    .line 3168
    .restart local v16    # "args":Landroid/os/Bundle;
    .restart local v17    # "needsGenerationTracker":Z
    :catchall_4
    move-exception v0

    move-object/from16 v2, v16

    move/from16 v3, v17

    .end local v16    # "args":Landroid/os/Bundle;
    .end local v17    # "needsGenerationTracker":Z
    .local v2, "args":Landroid/os/Bundle;
    .local v3, "needsGenerationTracker":Z
    :goto_a
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .end local v12    # "isSelf":Z
    .end local v14    # "currentGeneration":I
    .end local v22    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    :try_start_e
    throw v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1

    .line 3242
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v3    # "needsGenerationTracker":Z
    .restart local v12    # "isSelf":Z
    .restart local v14    # "currentGeneration":I
    .restart local v22    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :catch_1
    move-exception v0

    .line 3248
    :cond_14
    :goto_b
    const/16 v23, 0x0

    .line 3250
    .local v23, "c":Landroid/database/Cursor;
    :try_start_f
    const-string/jumbo v0, "name=?"

    new-array v2, v10, [Ljava/lang/String;

    aput-object v8, v2, v11

    invoke-static {v0, v2, v13}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 3253
    .local v6, "queryArgs":Landroid/os/Bundle;
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v0, v2, :cond_15

    .line 3254
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    move-wide/from16 v16, v2

    .line 3256
    .local v16, "token":J
    :try_start_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, v22

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    move-object/from16 v23, v0

    .line 3259
    :try_start_11
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3260
    nop

    .line 3261
    .end local v16    # "token":J
    move-object/from16 v2, v23

    goto :goto_c

    .line 3259
    .restart local v16    # "token":J
    :catchall_5
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3260
    nop

    .end local v12    # "isSelf":Z
    .end local v14    # "currentGeneration":I
    .end local v22    # "cp":Landroid/content/IContentProvider;
    .end local v23    # "c":Landroid/database/Cursor;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    throw v0

    .line 3262
    .end local v16    # "token":J
    .restart local v12    # "isSelf":Z
    .restart local v14    # "currentGeneration":I
    .restart local v22    # "cp":Landroid/content/IContentProvider;
    .restart local v23    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v17

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v19, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v16, v22

    move-object/from16 v18, v0

    move-object/from16 v20, v6

    invoke-interface/range {v16 .. v21}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    move-object v2, v0

    .line 3265
    .end local v23    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    :goto_c
    if-nez v2, :cond_17

    .line 3266
    :try_start_12
    const-string v0, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 3267
    nop

    .line 3286
    if-eqz v2, :cond_16

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3267
    :cond_16
    return-object v13

    .line 3270
    :cond_17
    :try_start_13
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_18
    move-object v0, v13

    :goto_d
    move-object v3, v0

    .line 3271
    .local v3, "value":Ljava/lang/String;
    monitor-enter p0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 3272
    :try_start_14
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_19

    .line 3273
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v14, v0, :cond_19

    .line 3274
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3276
    :cond_19
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 3281
    nop

    .line 3286
    if-eqz v2, :cond_1a

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3281
    :cond_1a
    return-object v3

    .line 3276
    :catchall_6
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .end local v2    # "c":Landroid/database/Cursor;
    .end local v12    # "isSelf":Z
    .end local v14    # "currentGeneration":I
    .end local v22    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    :try_start_16
    throw v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 3286
    .end local v3    # "value":Ljava/lang/String;
    .end local v6    # "queryArgs":Landroid/os/Bundle;
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v12    # "isSelf":Z
    .restart local v14    # "currentGeneration":I
    .restart local v22    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :catchall_7
    move-exception v0

    move-object/from16 v23, v2

    goto :goto_f

    .line 3282
    :catch_2
    move-exception v0

    move-object/from16 v23, v2

    goto :goto_e

    .line 3286
    .end local v2    # "c":Landroid/database/Cursor;
    .restart local v23    # "c":Landroid/database/Cursor;
    :catchall_8
    move-exception v0

    goto :goto_f

    .line 3282
    :catch_3
    move-exception v0

    .line 3283
    .local v0, "e":Landroid/os/RemoteException;
    :goto_e
    :try_start_17
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 3284
    nop

    .line 3286
    if-eqz v23, :cond_1b

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 3284
    :cond_1b
    return-object v13

    .line 3286
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    if-eqz v23, :cond_1c

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 3287
    :cond_1c
    throw v0
.end method

.method public blacklist getStringsForPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Landroid/util/ArrayMap;
    .locals 18
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3310
    .local p3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3311
    .local v4, "namespace":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/provider/DeviceConfig;->enforceReadPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 3312
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v5, v0

    .line 3313
    .local v5, "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, -0x1

    .line 3315
    .local v6, "currentGeneration":I
    monitor-enter p0

    .line 3316
    :try_start_0
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v7, 0x0

    if-eqz v0, :cond_8

    .line 3321
    :try_start_1
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3326
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    goto :goto_3

    .line 3328
    :cond_0
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 3329
    .local v0, "prefixCached":Z
    if-eqz v0, :cond_6

    .line 3330
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 3331
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3332
    .local v9, "name":Ljava/lang/String;
    iget-object v10, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3333
    iget-object v10, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3335
    .end local v9    # "name":Ljava/lang/String;
    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_2

    .line 3337
    :cond_3
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v9, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 3338
    iget-object v9, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3341
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 3342
    iget-object v10, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 3337
    .end local v9    # "key":Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3346
    .end local v8    # "i":I
    :cond_5
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    return-object v5

    .line 3349
    .end local v0    # "prefixCached":Z
    :cond_6
    :goto_3
    :try_start_3
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_7

    .line 3350
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move v6, v0

    .line 3357
    :cond_7
    goto :goto_4

    .line 3354
    :catch_0
    move-exception v0

    .line 3355
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v8, "Settings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting: getStringsForPrefix FD closed by unknown reason, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    iput-object v7, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3360
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_8
    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 3362
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 3364
    return-object v5

    .line 3366
    :cond_9
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v8, p1

    invoke-virtual {v0, v8}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v15

    .line 3369
    .local v15, "cp":Landroid/content/IContentProvider;
    :try_start_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v14, v0

    .line 3370
    .local v14, "args":Landroid/os/Bundle;
    const-string v0, "_prefix"

    invoke-virtual {v14, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3371
    const/4 v9, 0x0

    .line 3372
    .local v9, "needsGenerationTracker":Z
    monitor-enter p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 3373
    :try_start_6
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v0, :cond_a

    .line 3374
    const/4 v9, 0x1

    .line 3375
    :try_start_7
    const-string v0, "_track_generation"

    invoke-virtual {v14, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move/from16 v16, v9

    goto :goto_5

    .line 3381
    :catchall_0
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v17, v14

    goto/16 :goto_8

    .line 3373
    :cond_a
    move/from16 v16, v9

    .line 3381
    .end local v9    # "needsGenerationTracker":Z
    .local v16, "needsGenerationTracker":Z
    :goto_5
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3384
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v10

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3385
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    const/4 v13, 0x0

    .line 3384
    move-object v9, v15

    move-object/from16 v17, v14

    .end local v14    # "args":Landroid/os/Bundle;
    .local v17, "args":Landroid/os/Bundle;
    invoke-interface/range {v9 .. v14}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    move-object v9, v0

    .line 3386
    .local v9, "b":Landroid/os/Bundle;
    if-nez v9, :cond_b

    .line 3388
    return-object v5

    .line 3392
    :cond_b
    const-string/jumbo v0, "value"

    .line 3393
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    move-object v10, v0

    .line 3395
    .local v10, "flagsToValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3396
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 3397
    .local v11, "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    move-object/from16 v13, p3

    :try_start_a
    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 3398
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v5, v12, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3400
    .end local v11    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    goto :goto_6

    :cond_d
    move-object/from16 v13, p3

    goto :goto_7

    .line 3402
    :cond_e
    move-object/from16 v13, p3

    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 3405
    :goto_7
    monitor-enter p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    .line 3406
    if-eqz v16, :cond_10

    .line 3407
    :try_start_b
    const-string v0, "_track_generation"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    .line 3409
    .local v0, "array":Landroid/util/MemoryIntArray;
    const-string v11, "_generation_index"

    const/4 v12, -0x1

    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 3411
    .local v11, "index":I
    if-eqz v0, :cond_10

    if-ltz v11, :cond_10

    .line 3412
    const-string v12, "_generation"

    invoke-virtual {v9, v12, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3419
    .local v3, "generation":I
    iget-object v12, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v12, :cond_f

    .line 3420
    invoke-virtual {v12}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3422
    :cond_f
    new-instance v12, Landroid/provider/Settings$GenerationTracker;

    new-instance v14, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;

    invoke-direct {v14, v1}, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;-><init>(Landroid/provider/Settings$NameValueCache;)V

    invoke-direct {v12, v0, v11, v3, v14}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V

    iput-object v12, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3436
    move v6, v3

    .line 3439
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .end local v3    # "generation":I
    .end local v11    # "index":I
    :cond_10
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_11

    .line 3440
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v6, v0, :cond_11

    .line 3442
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 3444
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3446
    :cond_11
    monitor-exit p0

    .line 3447
    return-object v5

    .line 3446
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .end local v4    # "namespace":Ljava/lang/String;
    .end local v5    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "currentGeneration":I
    .end local v15    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_c
    throw v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1

    .line 3381
    .end local v9    # "b":Landroid/os/Bundle;
    .end local v10    # "flagsToValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "args":Landroid/os/Bundle;
    .restart local v4    # "namespace":Ljava/lang/String;
    .restart local v5    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "currentGeneration":I
    .restart local v14    # "args":Landroid/os/Bundle;
    .restart local v15    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v17, v14

    move/from16 v9, v16

    .end local v14    # "args":Landroid/os/Bundle;
    .restart local v17    # "args":Landroid/os/Bundle;
    goto :goto_8

    .end local v16    # "needsGenerationTracker":Z
    .end local v17    # "args":Landroid/os/Bundle;
    .local v9, "needsGenerationTracker":Z
    .restart local v14    # "args":Landroid/os/Bundle;
    :catchall_3
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v17, v14

    .end local v14    # "args":Landroid/os/Bundle;
    .restart local v17    # "args":Landroid/os/Bundle;
    :goto_8
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .end local v4    # "namespace":Ljava/lang/String;
    .end local v5    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "currentGeneration":I
    .end local v15    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_e
    throw v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1

    .line 3448
    .end local v9    # "needsGenerationTracker":Z
    .end local v17    # "args":Landroid/os/Bundle;
    .restart local v4    # "namespace":Ljava/lang/String;
    .restart local v5    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "currentGeneration":I
    .restart local v15    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    goto :goto_9

    .line 3381
    .restart local v9    # "needsGenerationTracker":Z
    .restart local v17    # "args":Landroid/os/Bundle;
    :catchall_4
    move-exception v0

    goto :goto_8

    .line 3448
    .end local v9    # "needsGenerationTracker":Z
    .end local v17    # "args":Landroid/os/Bundle;
    :catch_2
    move-exception v0

    move-object/from16 v13, p3

    .line 3450
    .local v0, "e":Landroid/os/RemoteException;
    :goto_9
    return-object v5

    .line 3360
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v15    # "cp":Landroid/content/IContentProvider;
    :catchall_5
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v13, p3

    :goto_a
    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_a
.end method

.method synthetic blacklist lambda$getStringForUser$0$android-provider-Settings$NameValueCache()V
    .locals 2

    .line 3213
    monitor-enter p0

    .line 3214
    :try_start_0
    const-string v0, "Settings"

    const-string v1, "Error accessing generation tracker - removing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_0

    .line 3217
    nop

    .line 3219
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3220
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3221
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 3223
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_0
    monitor-exit p0

    .line 3224
    return-void

    .line 3223
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method synthetic blacklist lambda$getStringsForPrefix$1$android-provider-Settings$NameValueCache()V
    .locals 2

    .line 3424
    monitor-enter p0

    .line 3425
    :try_start_0
    const-string v0, "Settings"

    const-string v1, "Error accessing generation tracker - removing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v0, :cond_0

    .line 3428
    nop

    .line 3430
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3431
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3432
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 3434
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_0
    monitor-exit p0

    .line 3435
    return-void

    .line 3434
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .locals 8
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "makeDefault"    # Z
    .param p6, "userHandle"    # I
    .param p7, "overrideableByRestore"    # Z

    .line 3006
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3007
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    const-string v1, "_user"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3009
    if-eqz p4, :cond_0

    .line 3010
    const-string v1, "_tag"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3012
    :cond_0
    const/4 v7, 0x1

    if-eqz p5, :cond_1

    .line 3013
    const-string v1, "_make_default"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3015
    :cond_1
    if-eqz p7, :cond_2

    .line 3016
    const-string v1, "_overrideable_by_restore"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3018
    :cond_2
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 3019
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v3}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v3

    .line 3020
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 3019
    move-object v5, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3024
    nop

    .line 3025
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    return v7

    .line 3021
    :catch_0
    move-exception v0

    .line 3022
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3023
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setStringsForPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 8
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 3030
    .local p3, "keyValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3032
    return v1

    .line 3035
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3036
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "_prefix"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3037
    const-string v2, "_flags"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3038
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v2, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3039
    .local v2, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v4}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v4

    .line 3040
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    const/4 v6, 0x0

    .line 3039
    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 3042
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "config_set_all_return"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 3043
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 3045
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method
