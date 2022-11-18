.class public final Landroid/view/DisplayAddress$Physical;
.super Landroid/view/DisplayAddress;
.source "DisplayAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Physical"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DisplayAddress$Physical;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MODEL_SHIFT:I = 0x8

.field private static final blacklist UNKNOWN_MODEL:J


# instance fields
.field private final blacklist mPhysicalDisplayId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 153
    new-instance v0, Landroid/view/DisplayAddress$Physical$1;

    invoke-direct {v0}, Landroid/view/DisplayAddress$Physical$1;-><init>()V

    sput-object v0, Landroid/view/DisplayAddress$Physical;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Long;)V
    .locals 5
    .param p1, "port"    # I
    .param p2, "model"    # Ljava/lang/Long;

    .line 145
    invoke-direct {p0}, Landroid/view/DisplayAddress;-><init>()V

    .line 146
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    .line 150
    if-nez p2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    :goto_0
    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    .line 151
    return-void

    .line 147
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The port should be in the interval [0, 255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/Long;Landroid/view/DisplayAddress$Physical-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/DisplayAddress$Physical;-><init>(ILjava/lang/Long;)V

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .locals 0
    .param p1, "physicalDisplayId"    # J

    .line 141
    invoke-direct {p0}, Landroid/view/DisplayAddress;-><init>()V

    .line 142
    iput-wide p1, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    .line 143
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/view/DisplayAddress$Physical-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/DisplayAddress$Physical;-><init>(J)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 114
    instance-of v0, p1, Landroid/view/DisplayAddress$Physical;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    move-object v2, p1

    check-cast v2, Landroid/view/DisplayAddress$Physical;

    iget-wide v2, v2, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getModel()Ljava/lang/Long;
    .locals 4

    .line 108
    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    .line 109
    .local v0, "model":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public blacklist getPhysicalDisplayId()J
    .locals 2

    .line 89
    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    return-wide v0
.end method

.method public blacklist getPort()I
    .locals 4

    .line 98
    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 133
    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v1, "port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/view/DisplayAddress$Physical;->getModel()Ljava/lang/Long;

    move-result-object v1

    .line 124
    .local v1, "model":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 125
    const-string v2, ", model=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 138
    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    return-void
.end method
