.class public final Landroid/hardware/radio/RadioMetadata$Clock;
.super Ljava/lang/Object;
.source "RadioMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Clock"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioMetadata$Clock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mTimezoneOffsetMinutes:I

.field private final greylist-max-o mUtcEpochSeconds:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 232
    new-instance v0, Landroid/hardware/radio/RadioMetadata$Clock$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioMetadata$Clock$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioMetadata$Clock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JI)V
    .locals 0
    .param p1, "utcEpochSeconds"    # J
    .param p3, "timezoneOffsetMinutes"    # I

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-wide p1, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mUtcEpochSeconds:J

    .line 245
    iput p3, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mTimezoneOffsetMinutes:I

    .line 246
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mUtcEpochSeconds:J

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mTimezoneOffsetMinutes:I

    .line 251
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioMetadata$Clock-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioMetadata$Clock;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTimezoneOffsetMinutes()I
    .locals 1

    .line 258
    iget v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mTimezoneOffsetMinutes:I

    return v0
.end method

.method public whitelist getUtcEpochSeconds()J
    .locals 2

    .line 254
    iget-wide v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mUtcEpochSeconds:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 228
    iget-wide v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mUtcEpochSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 229
    iget v0, p0, Landroid/hardware/radio/RadioMetadata$Clock;->mTimezoneOffsetMinutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    return-void
.end method
