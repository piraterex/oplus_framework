.class public Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;
.super Landroid/telephony/ICellBroadcastService$Stub;
.source "CellBroadcastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellBroadcastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ICellBroadcastServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/CellBroadcastService;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/CellBroadcastService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/CellBroadcastService;

    .line 137
    iput-object p1, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-direct {p0}, Landroid/telephony/ICellBroadcastService$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$handleCdmaScpMessage$0(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "callback"    # Landroid/os/RemoteCallback;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 177
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 178
    return-void
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 197
    iget-object v0, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/CellBroadcastService;->access$000(Landroid/telephony/CellBroadcastService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 202
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 203
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-static {v1, p1, v0, p2}, Landroid/telephony/CellBroadcastService;->access$100(Landroid/telephony/CellBroadcastService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public blacklist getCellBroadcastAreaInfo(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "slotIndex"    # I

    .line 192
    iget-object v0, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {v0, p1}, Landroid/telephony/CellBroadcastService;->getCellBroadcastAreaInfo(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist handleCdmaCellBroadcastSms(I[BI)V
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "bearerData"    # [B
    .param p3, "serviceCategory"    # I

    .line 159
    iget-object v0, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/CellBroadcastService;->onCdmaCellBroadcastSms(I[BI)V

    .line 161
    return-void
.end method

.method public blacklist handleCdmaScpMessage(ILjava/util/List;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p3, "originatingAddress"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .line 176
    .local p2, "smsCbProgramData":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/cdma/CdmaSmsCbProgramData;>;"
    new-instance v0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4}, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/os/RemoteCallback;)V

    .line 179
    .local v0, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Bundle;>;"
    iget-object v1, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/telephony/CellBroadcastService;->onCdmaScpMessage(ILjava/util/List;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 181
    return-void
.end method

.method public blacklist handleGsmCellBroadcastSms(I[B)V
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "message"    # [B

    .line 146
    iget-object v0, p0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;->this$0:Landroid/telephony/CellBroadcastService;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellBroadcastService;->onGsmCellBroadcastSms(I[B)V

    .line 147
    return-void
.end method
