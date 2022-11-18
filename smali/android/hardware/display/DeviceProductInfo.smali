.class public final Landroid/hardware/display/DeviceProductInfo;
.super Ljava/lang/Object;
.source "DeviceProductInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DeviceProductInfo$ManufactureDate;,
        Landroid/hardware/display/DeviceProductInfo$ConnectionToSinkType;
    }
.end annotation


# static fields
.field public static final whitelist CONNECTION_TO_SINK_BUILT_IN:I = 0x1

.field public static final whitelist CONNECTION_TO_SINK_DIRECT:I = 0x2

.field public static final whitelist CONNECTION_TO_SINK_TRANSITIVE:I = 0x3

.field public static final whitelist CONNECTION_TO_SINK_UNKNOWN:I

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/DeviceProductInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConnectionToSinkType:I

.field private final blacklist mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

.field private final blacklist mManufacturerPnpId:Ljava/lang/String;

.field private final blacklist mModelYear:Ljava/lang/Integer;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mProductId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 224
    new-instance v0, Landroid/hardware/display/DeviceProductInfo$1;

    invoke-direct {v0}, Landroid/hardware/display/DeviceProductInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/display/DeviceProductInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    .line 106
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/display/DeviceProductInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/DeviceProductInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "manufacturerPnpId"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "modelYear"    # I
    .param p5, "connectionToSinkType"    # I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    .line 92
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    .line 93
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    .line 94
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    .line 96
    iput p5, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/hardware/display/DeviceProductInfo$ManufactureDate;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "manufacturerPnpId"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "modelYear"    # Ljava/lang/Integer;
    .param p5, "manufactureDate"    # Landroid/hardware/display/DeviceProductInfo$ManufactureDate;
    .param p6, "connectionToSinkType"    # I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    .line 81
    iput-object p5, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    .line 82
    iput p6, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    .line 83
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 207
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 208
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 209
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/hardware/display/DeviceProductInfo;

    .line 210
    .local v2, "that":Landroid/hardware/display/DeviceProductInfo;
    iget-object v3, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    .line 211
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    .line 212
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    iget-object v4, v2, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    .line 213
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    iget-object v4, v2, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    .line 214
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    iget v4, v2, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 210
    :goto_0
    return v0

    .line 208
    .end local v2    # "that":Landroid/hardware/display/DeviceProductInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getConnectionToSinkType()I
    .locals 1

    .line 184
    iget v0, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    return v0
.end method

.method public blacklist getManufactureDate()Landroid/hardware/display/DeviceProductInfo$ManufactureDate;
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    return-object v0
.end method

.method public whitelist getManufactureWeek()I
    .locals 2

    .line 162
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 163
    return v1

    .line 165
    :cond_0
    invoke-static {v0}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->-$$Nest$fgetmWeek(Landroid/hardware/display/DeviceProductInfo$ManufactureDate;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-static {v0}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->-$$Nest$fgetmWeek(Landroid/hardware/display/DeviceProductInfo$ManufactureDate;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    return v1
.end method

.method public whitelist getManufactureYear()I
    .locals 2

    .line 150
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 151
    return v1

    .line 153
    :cond_0
    invoke-static {v0}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->-$$Nest$fgetmYear(Landroid/hardware/display/DeviceProductInfo$ManufactureDate;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-static {v0}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->-$$Nest$fgetmYear(Landroid/hardware/display/DeviceProductInfo$ManufactureDate;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    return v1
.end method

.method public whitelist getManufacturerPnpId()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getModelYear()I
    .locals 1

    .line 141
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProductId()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 220
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 220
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceProductInfo{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manufacturerPnpId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manufactureDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectionToSinkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 244
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 249
    iget v0, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    return-void
.end method
