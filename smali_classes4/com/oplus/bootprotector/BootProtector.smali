.class public Lcom/oplus/bootprotector/BootProtector;
.super Ljava/lang/Object;
.source "BootProtector.java"


# static fields
.field private static final blacklist BOOTTIME_THRESHOLD:J = 0x3a980L

.field private static final blacklist FIRST_BOOT:I = 0x1

.field private static final blacklist STARTCOUNT_THRESHOLD:I = 0x3

.field private static final blacklist SYSPROP_BOOT_ABNORMAL:Ljava/lang/String; = "sys.bootprotector.bootabnormal"

.field private static final blacklist SYSPROP_FIRST_BOOT_TIME:Ljava/lang/String; = "sys.bootprotector.firstboottime"

.field private static final blacklist SYSPROP_START_COUNT:Ljava/lang/String; = "sys.system_server.start_count"

.field private static blacklist sIsBootAbnormal:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    const-string v0, "bootprotectorjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/bootprotector/BootProtector;->sIsBootAbnormal:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist convertAbxXml(Ljava/lang/String;)I
    .locals 7
    .param p0, "inPath"    # Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convert AbxXml: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bootprotector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".bptmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "outPath":Ljava/lang/String;
    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 91
    .local v1, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 93
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 95
    .local v4, "os":Ljava/io/OutputStream;
    :try_start_2
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 96
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 97
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 98
    invoke-static {v1, v2}, Landroid/util/Xml;->copy(Lorg/xmlpull/v1/XmlPullParser;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 99
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v4    # "os":Ljava/io/OutputStream;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 102
    .end local v3    # "is":Ljava/io/InputStream;
    nop

    .line 103
    const/4 v3, 0x0

    return v3

    .line 93
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "outPath":Ljava/lang/String;
    .end local v1    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local p0    # "inPath":Ljava/lang/String;
    :goto_0
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v0    # "outPath":Ljava/lang/String;
    .restart local v1    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local p0    # "inPath":Ljava/lang/String;
    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v5

    :try_start_8
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "outPath":Ljava/lang/String;
    .end local v1    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local p0    # "inPath":Ljava/lang/String;
    :goto_1
    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 100
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "outPath":Ljava/lang/String;
    .restart local v1    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local p0    # "inPath":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 101
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    return v4
.end method

.method public static native whitelist fileDetectAndRecoveryNative(Ljava/lang/String;)V
.end method

.method public static whitelist recordBootSuccess()V
    .locals 3

    .line 76
    const-string/jumbo v0, "sys.bootprotector.bootabnormal"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, "sys.system_server.start_count"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 82
    const-string/jumbo v0, "system_server"

    invoke-static {v0}, Lcom/oplus/bootprotector/BootProtector;->recordBootSuccessNative(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method public static native whitelist recordBootSuccessNative(Ljava/lang/String;)V
.end method

.method public static whitelist runBootProtector(I)V
    .locals 13
    .param p0, "startCount"    # I

    .line 54
    const-string/jumbo v0, "sys.bootprotector.firstboottime"

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 57
    .local v1, "firstBootTime":J
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v1    # "firstBootTime":J
    goto :goto_2

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string/jumbo v4, "sys.bootprotector.bootabnormal"

    if-ne p0, v2, :cond_2

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 60
    .local v5, "nowBootTime":J
    const-wide/16 v7, 0x0

    invoke-static {v0, v7, v8}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 61
    .local v7, "firstBootTime":J
    sub-long v9, v5, v7

    const-wide/32 v11, 0x3a980

    cmp-long v0, v9, v11

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/oplus/bootprotector/BootProtector;->sIsBootAbnormal:Z

    .line 64
    if-eqz v1, :cond_3

    .line 65
    const-string/jumbo v0, "true"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    .end local v5    # "nowBootTime":J
    .end local v7    # "firstBootTime":J
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 68
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    const-string/jumbo v0, "system_server"

    invoke-static {v0}, Lcom/oplus/bootprotector/BootProtector;->fileDetectAndRecoveryNative(Ljava/lang/String;)V

    goto :goto_2

    .line 67
    :cond_3
    :goto_1
    nop

    .line 73
    :cond_4
    :goto_2
    return-void
.end method
