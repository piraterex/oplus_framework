.class public Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
.super Ljava/lang/Object;
.source "ProtoLogViewerConfigReader.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ProtoLogViewerConfigReader"


# instance fields
.field private blacklist mLogMessageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    return-void
.end method

.method static blacklist logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "msg"    # Ljava/lang/String;

    .line 119
    const-string v0, "ProtoLogViewerConfigReader"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist getViewerString(I)Ljava/lang/String;
    .locals 2
    .param p1, "messageHash"    # I

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 49
    .end local p0    # "this":Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 45
    .end local p1    # "messageHash":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist knownViewerStringsNumber()I
    .locals 1

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 115
    .end local p0    # "this":Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist loadViewerConfig(Ljava/io/InputStream;)V
    .locals 13
    .param p1, "viewerConfigInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 80
    monitor-exit p0

    return-void

    .line 82
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 83
    .local v0, "config":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 84
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v2, "builder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 87
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 89
    .end local p0    # "this":Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 90
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "messages"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 93
    .local v5, "messages":Lorg/json/JSONObject;
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    .line 94
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 95
    .local v6, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 96
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .local v7, "key":Ljava/lang/String;
    :try_start_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 99
    .local v8, "hash":I
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 100
    .local v9, "val":Lorg/json/JSONObject;
    const-string/jumbo v10, "message"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, "msg":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    nop

    .end local v8    # "hash":I
    .end local v9    # "val":Lorg/json/JSONObject;
    .end local v10    # "msg":Ljava/lang/String;
    goto :goto_2

    .line 102
    :catch_0
    move-exception v8

    .line 105
    .end local v7    # "key":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 106
    :cond_2
    monitor-exit p0

    return-void

    .line 78
    .end local v0    # "config":Ljava/io/InputStreamReader;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "messages":Lorg/json/JSONObject;
    .end local v6    # "it":Ljava/util/Iterator;
    .end local p1    # "viewerConfigInputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist loadViewerConfig(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "viewerConfigFilename"    # Ljava/lang/String;

    monitor-enter p0

    .line 58
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadViewerConfig(Ljava/io/InputStream;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " log definitions from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    goto :goto_0

    .line 57
    .end local p0    # "this":Lcom/android/internal/protolog/ProtoLogViewerConfigReader;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "viewerConfigFilename":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 67
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "viewerConfigFilename":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load log definitions: JSON parsing exception while reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load log definitions: IOException while reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 70
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 61
    :catch_2
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load log definitions: File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    nop

    .line 71
    :goto_0
    monitor-exit p0

    return-void

    .line 57
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "viewerConfigFilename":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    throw p1
.end method
