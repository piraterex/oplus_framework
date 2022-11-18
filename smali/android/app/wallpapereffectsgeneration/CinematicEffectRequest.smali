.class public final Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;
.super Ljava/lang/Object;
.source "CinematicEffectRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mTaskId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest$1;

    invoke-direct {v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest$1;-><init>()V

    sput-object v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->mTaskId:Ljava/lang/String;

    .line 49
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 50
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->mTaskId:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->mBitmap:Landroid/graphics/Bitmap;

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 78
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 79
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;

    .line 83
    .local v0, "that":Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;
    iget-object v1, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->mTaskId:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->mTaskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 80
    .end local v0    # "that":Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 73
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getTaskId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->mTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->mTaskId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->mTaskId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 100
    return-void
.end method
