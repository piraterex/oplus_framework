.class public final Landroid/net/metrics/DnsEvent;
.super Ljava/lang/Object;
.source "DnsEvent.java"


# static fields
.field private static final greylist-max-o SIZE_LIMIT:I = 0x4e20


# instance fields
.field public greylist-max-o eventCount:I

.field public greylist-max-o eventTypes:[B

.field public greylist-max-o latenciesMs:[I

.field public final greylist-max-o netId:I

.field public greylist-max-o returnCodes:[B

.field public greylist-max-o successCount:I

.field public final greylist-max-o transports:J


# direct methods
.method public constructor greylist-max-o <init>(IJI)V
    .locals 1
    .param p1, "netId"    # I
    .param p2, "transports"    # J
    .param p4, "initialCapacity"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    .line 52
    iput-wide p2, p0, Landroid/net/metrics/DnsEvent;->transports:J

    .line 53
    new-array v0, p4, [B

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    .line 54
    new-array v0, p4, [B

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    .line 55
    new-array v0, p4, [I

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    .line 56
    return-void
.end method


# virtual methods
.method greylist-max-o addResult(BBI)Z
    .locals 7
    .param p1, "eventType"    # B
    .param p2, "returnCode"    # B
    .param p3, "latencyMs"    # I

    .line 59
    const/4 v0, 0x1

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 60
    .local v1, "isSuccess":Z
    :goto_0
    iget v2, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    const/16 v3, 0x4e20

    if-lt v2, v3, :cond_1

    .line 62
    return v1

    .line 64
    :cond_1
    iget-object v3, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    array-length v3, v3

    if-ne v2, v3, :cond_2

    .line 65
    const-wide v3, 0x3ff6666666666666L    # 1.4

    int-to-double v5, v2

    mul-double/2addr v5, v3

    double-to-int v2, v5

    invoke-virtual {p0, v2}, Landroid/net/metrics/DnsEvent;->resize(I)V

    .line 67
    :cond_2
    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    iget v3, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    aput-byte p1, v2, v3

    .line 68
    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    aput-byte p2, v2, v3

    .line 69
    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    aput p3, v2, v3

    .line 70
    add-int/2addr v3, v0

    iput v3, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    .line 71
    if-eqz v1, :cond_3

    .line 72
    iget v2, p0, Landroid/net/metrics/DnsEvent;->successCount:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/net/metrics/DnsEvent;->successCount:I

    .line 74
    :cond_3
    return v1
.end method

.method public greylist-max-o resize(I)V
    .locals 1
    .param p1, "newLength"    # I

    .line 78
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    .line 79
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    .line 80
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    .line 81
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DnsEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    const-string v1, "netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const-string v1, ", transports="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [J

    iget-wide v3, p0, Landroid/net/metrics/DnsEvent;->transports:J

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    .line 88
    invoke-static {v2}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%d events, "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/net/metrics/DnsEvent;->successCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "%d success)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
