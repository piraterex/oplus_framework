.class public Landroid/telephony/mbms/MbmsUtils;
.super Ljava/lang/Object;
.source "MbmsUtils.java"


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "MbmsUtils"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 139
    const-string v0, "[^a-zA-Z0-9_]"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "sanitizedServiceId":Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/mbms/MbmsTempFileProvider;->getEmbmsTempFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 143
    .local v1, "embmsTempFileDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public static greylist-max-o getMiddlewareServiceInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceAction"    # Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 91
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v1, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-static {p0, p1}, Landroid/telephony/mbms/MbmsUtils;->getOverrideServiceName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 96
    .local v2, "overrideService":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 97
    const/high16 v3, 0x100000

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_0

    .line 100
    .end local v3    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 101
    const/high16 v3, 0x20000

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 105
    .restart local v3    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    const/4 v4, 0x0

    const-string v5, "MbmsUtils"

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 111
    const-string v6, "More than one MBMS service found, cannot get unique service"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-object v4

    .line 114
    :cond_2
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v4

    .line 106
    :cond_3
    :goto_1
    const-string v6, "No MBMS services found, cannot get service info"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-object v4
.end method

.method public static greylist-max-o getOverrideServiceName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceAction"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "metaDataKey":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "android.telephony.action.EmbmsGroupCall"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "android.telephony.action.EmbmsDownload"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "android.telephony.action.EmbmsStreaming"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 64
    :pswitch_0
    const-string/jumbo v0, "mbms-group-call-service-override"

    goto :goto_2

    .line 61
    :pswitch_1
    const-string/jumbo v0, "mbms-streaming-service-override"

    .line 62
    goto :goto_2

    .line 58
    :pswitch_2
    const-string/jumbo v0, "mbms-download-service-override"

    .line 59
    nop

    .line 67
    :goto_2
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 68
    return-object v1

    .line 73
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 78
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_2

    .line 79
    return-object v1

    .line 81
    :cond_2
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "serviceComponent":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 83
    return-object v1

    .line 85
    :cond_3
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    .line 75
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "serviceComponent":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x51f2f99b -> :sswitch_2
        -0x184971db -> :sswitch_1
        0x68707b80 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o isContainedIn(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "child"    # Ljava/io/File;

    .line 42
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "parentPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "childPath":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 45
    .end local v0    # "parentPath":Ljava/lang/String;
    .end local v1    # "childPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve canonical paths: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o startBinding(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceAction"    # Ljava/lang/String;
    .param p2, "serviceConnection"    # Landroid/content/ServiceConnection;

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v0, "bindIntent":Landroid/content/Intent;
    nop

    .line 121
    invoke-static {p0, p1}, Landroid/telephony/mbms/MbmsUtils;->getMiddlewareServiceInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 123
    .local v1, "mbmsServiceInfo":Landroid/content/pm/ServiceInfo;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 124
    return v2

    .line 127
    :cond_0
    invoke-static {v1}, Landroid/telephony/mbms/MbmsUtils;->toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0, p2, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 130
    const/4 v2, 0x0

    return v2
.end method

.method public static greylist-max-o toComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "ci"    # Landroid/content/pm/ComponentInfo;

    .line 51
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
