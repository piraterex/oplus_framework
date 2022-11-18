.class public Landroid/telephony/data/QosBearerFilter$PortRange;
.super Ljava/lang/Object;
.source "QosBearerFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/QosBearerFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PortRange"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/QosBearerFilter$PortRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist end:I

.field blacklist start:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 172
    new-instance v0, Landroid/telephony/data/QosBearerFilter$PortRange$1;

    invoke-direct {v0}, Landroid/telephony/data/QosBearerFilter$PortRange$1;-><init>()V

    sput-object v0, Landroid/telephony/data/QosBearerFilter$PortRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p1, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    .line 144
    iput p2, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    .line 145
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    .line 140
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/QosBearerFilter$PortRange-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/QosBearerFilter$PortRange;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 194
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 196
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/telephony/data/QosBearerFilter$PortRange;

    if-nez v2, :cond_1

    goto :goto_1

    .line 200
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/QosBearerFilter$PortRange;

    .line 201
    .local v2, "other":Landroid/telephony/data/QosBearerFilter$PortRange;
    iget v3, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    iget v4, v2, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    iget v4, v2, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 197
    .end local v2    # "other":Landroid/telephony/data/QosBearerFilter$PortRange;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getEnd()I
    .locals 1

    .line 152
    iget v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    return v0
.end method

.method public blacklist getStart()I
    .locals 1

    .line 148
    iget v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 207
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isValid()Z
    .locals 4

    .line 156
    iget v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    const v2, 0xffff

    if-gt v0, v2, :cond_0

    iget v3, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    if-lt v3, v1, :cond_0

    if-gt v3, v2, :cond_0

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PortRange { start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 163
    iget v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->start:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Landroid/telephony/data/QosBearerFilter$PortRange;->end:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    return-void
.end method
