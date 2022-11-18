.class public abstract Landroid/telephony/CellBroadcastService;
.super Landroid/app/Service;
.source "CellBroadcastService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;
    }
.end annotation


# static fields
.field public static final whitelist CELL_BROADCAST_SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.CellBroadcastService"


# instance fields
.field private final blacklist mStubWrapper:Landroid/telephony/ICellBroadcastService$Stub;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    new-instance v0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;

    invoke-direct {v0, p0}, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;-><init>(Landroid/telephony/CellBroadcastService;)V

    iput-object v0, p0, Landroid/telephony/CellBroadcastService;->mStubWrapper:Landroid/telephony/ICellBroadcastService$Stub;

    .line 75
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/telephony/CellBroadcastService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telephony/CellBroadcastService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/CellBroadcastService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Landroid/telephony/CellBroadcastService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telephony/CellBroadcastService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/CellBroadcastService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract whitelist getCellBroadcastAreaInfo(I)Ljava/lang/CharSequence;
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Landroid/telephony/CellBroadcastService;->mStubWrapper:Landroid/telephony/ICellBroadcastService$Stub;

    return-object v0
.end method

.method public abstract whitelist onCdmaCellBroadcastSms(I[BI)V
.end method

.method public abstract whitelist onCdmaScpMessage(ILjava/util/List;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onGsmCellBroadcastSms(I[B)V
.end method
