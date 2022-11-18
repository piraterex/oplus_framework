.class public Landroid/service/voice/VoiceInteractionServiceInfo;
.super Ljava/lang/Object;
.source "VoiceInteractionServiceInfo.java"


# static fields
.field static final greylist-max-o TAG:Ljava/lang/String; = "VoiceInteractionServiceInfo"


# instance fields
.field private blacklist mHotwordDetectionService:Ljava/lang/String;

.field private greylist-max-o mParseError:Ljava/lang/String;

.field private greylist-max-o mRecognitionService:Ljava/lang/String;

.field private greylist-max-o mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private greylist-max-o mSessionService:Ljava/lang/String;

.field private greylist-max-o mSettingsActivity:Ljava/lang/String;

.field private greylist-max-o mSupportsAssist:Z

.field private greylist-max-o mSupportsLaunchFromKeyguard:Z

.field private greylist-max-o mSupportsLocalInteraction:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "comp"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 64
    invoke-static {p2, p3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 65
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V
    .locals 8
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "si"    # Landroid/content/pm/ServiceInfo;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const-string v0, "Service does not require permission android.permission.BIND_VOICE_INTERACTION"

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    .line 96
    return-void

    .line 99
    :cond_0
    :try_start_0
    const-string v0, "android.voice_interaction"

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v0, :cond_2

    .line 102
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No android.voice_interaction meta-data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 104
    :cond_1
    return-void

    .line 107
    :cond_2
    :try_start_3
    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 109
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 112
    .local v2, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v6, :cond_3

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 116
    :cond_3
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "nodeName":Ljava/lang/String;
    const-string/jumbo v7, "voice-interaction-service"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 118
    const-string v5, "Meta-data does not start with voice-interaction-service tag"

    iput-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    if-eqz v0, :cond_4

    :try_start_4
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 119
    :cond_4
    return-void

    .line 122
    :cond_5
    :try_start_5
    sget-object v7, Lcom/android/internal/R$styleable;->VoiceInteractionService:[I

    invoke-virtual {v1, v2, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 124
    .local v7, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v7, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    .line 126
    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    .line 128
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSettingsActivity:Ljava/lang/String;

    .line 130
    const/4 v6, 0x3

    invoke-virtual {v7, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsAssist:Z

    .line 133
    const/4 v6, 0x4

    invoke-virtual {v7, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLaunchFromKeyguard:Z

    .line 136
    const/4 v6, 0x5

    invoke-virtual {v7, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLocalInteraction:Z

    .line 138
    const/4 v5, 0x6

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mHotwordDetectionService:Ljava/lang/String;

    .line 140
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    iget-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 142
    const-string v5, "No sessionService specified"

    iput-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 149
    if-eqz v0, :cond_6

    :try_start_6
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 143
    :cond_6
    return-void

    .line 145
    :cond_7
    :try_start_7
    iget-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    if-nez v5, :cond_9

    .line 146
    const-string v5, "No recognitionService specified"

    iput-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 149
    if-eqz v0, :cond_8

    :try_start_8
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 147
    :cond_8
    return-void

    .line 149
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "type":I
    .end local v7    # "array":Landroid/content/res/TypedArray;
    :cond_9
    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0

    .line 153
    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_a
    nop

    .line 154
    iput-object p2, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 155
    return-void

    .line 99
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_b

    :try_start_9
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/service/voice/VoiceInteractionServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "si":Landroid/content/pm/ServiceInfo;
    :cond_b
    :goto_1
    throw v1
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_0

    .line 149
    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/service/voice/VoiceInteractionServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing voice interation service meta-data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    .line 151
    const-string v1, "VoiceInteractionServiceInfo"

    const-string v2, "error parsing voice interaction service meta-data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    return-void
.end method

.method private static greylist-max-o getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 3
    .param p0, "comp"    # Landroid/content/ComponentName;
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 71
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/32 v1, 0xc0080

    invoke-interface {v0, p0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v0, :cond_0

    .line 77
    return-object v0

    .line 80
    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    :cond_0
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 81
    :goto_0
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getHotwordDetectionService()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mHotwordDetectionService:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getParseError()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getRecognitionService()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    .line 162
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public greylist-max-o getSessionService()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getSettingsActivity()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSettingsActivity:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getSupportsAssist()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsAssist:Z

    return v0
.end method

.method public greylist-max-o getSupportsLaunchFromKeyguard()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLaunchFromKeyguard:Z

    return v0
.end method

.method public greylist-max-o getSupportsLocalInteraction()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLocalInteraction:Z

    return v0
.end method
