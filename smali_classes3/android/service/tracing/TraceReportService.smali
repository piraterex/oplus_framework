.class public Landroid/service/tracing/TraceReportService;
.super Landroid/app/Service;
.source "TraceReportService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/tracing/TraceReportService$TraceParams;
    }
.end annotation


# static fields
.field public static final blacklist MSG_REPORT_TRACE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "TraceReportService"


# instance fields
.field private blacklist mMessenger:Landroid/os/Messenger;


# direct methods
.method public static synthetic blacklist $r8$lambda$mNBkomUtoeG9lkENLsINm4z-yjQ(Landroid/service/tracing/TraceReportService;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/tracing/TraceReportService;->onMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/tracing/TraceReportService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private blacklist onMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 130
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/tracing/TraceReportParams;

    if-nez v0, :cond_0

    .line 131
    const-string v0, "TraceReportService"

    const-string v2, "Received invalid type for report trace message."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v1

    .line 134
    :cond_0
    new-instance v0, Landroid/service/tracing/TraceReportService$TraceParams;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/tracing/TraceReportParams;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/service/tracing/TraceReportService$TraceParams;-><init>(Landroid/tracing/TraceReportParams;Landroid/service/tracing/TraceReportService$TraceParams-IA;)V

    .line 136
    .local v0, "params":Landroid/service/tracing/TraceReportService$TraceParams;
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/service/tracing/TraceReportService;->onReportTrace(Landroid/service/tracing/TraceReportService$TraceParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :try_start_1
    invoke-virtual {v0}, Landroid/service/tracing/TraceReportService$TraceParams;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 142
    nop

    .line 143
    :goto_0
    return v2

    .line 138
    :catchall_0
    move-exception v1

    .line 139
    :try_start_2
    invoke-virtual {v0}, Landroid/service/tracing/TraceReportService$TraceParams;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    goto :goto_1

    .line 140
    :catch_1
    move-exception v2

    .line 142
    :goto_1
    throw v1

    .line 145
    .end local v0    # "params":Landroid/service/tracing/TraceReportService$TraceParams;
    :cond_1
    return v1
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 156
    iget-object v0, p0, Landroid/service/tracing/TraceReportService;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Landroid/service/tracing/TraceReportService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/service/tracing/TraceReportService$$ExternalSyntheticLambda0;-><init>(Landroid/service/tracing/TraceReportService;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/service/tracing/TraceReportService;->mMessenger:Landroid/os/Messenger;

    .line 159
    :cond_0
    iget-object v0, p0, Landroid/service/tracing/TraceReportService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onReportTrace(Landroid/service/tracing/TraceReportService$TraceParams;)V
    .locals 0
    .param p1, "args"    # Landroid/service/tracing/TraceReportService$TraceParams;

    .line 123
    return-void
.end method
