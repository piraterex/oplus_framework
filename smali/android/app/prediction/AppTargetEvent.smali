.class public final Landroid/app/prediction/AppTargetEvent;
.super Ljava/lang/Object;
.source "AppTargetEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/prediction/AppTargetEvent$Builder;,
        Landroid/app/prediction/AppTargetEvent$ActionType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DISMISS:I = 0x2

.field public static final whitelist ACTION_LAUNCH:I = 0x1

.field public static final whitelist ACTION_PIN:I = 0x3

.field public static final whitelist ACTION_UNDISMISS:I = 0x5

.field public static final whitelist ACTION_UNPIN:I = 0x4

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/prediction/AppTargetEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAction:I

.field private final blacklist mLocation:Ljava/lang/String;

.field private final blacklist mTarget:Landroid/app/prediction/AppTarget;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Landroid/app/prediction/AppTargetEvent$1;

    invoke-direct {v0}, Landroid/app/prediction/AppTargetEvent$1;-><init>()V

    sput-object v0, Landroid/app/prediction/AppTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/prediction/AppTarget;Ljava/lang/String;I)V
    .locals 0
    .param p1, "target"    # Landroid/app/prediction/AppTarget;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "actionType"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    .line 75
    iput-object p2, p0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    .line 76
    iput p3, p0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    .line 77
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/prediction/AppTarget;Ljava/lang/String;ILandroid/app/prediction/AppTargetEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/prediction/AppTargetEvent;-><init>(Landroid/app/prediction/AppTarget;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-class v0, Landroid/app/prediction/AppTarget;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/prediction/AppTarget;

    iput-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/prediction/AppTargetEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/prediction/AppTargetEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 112
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/prediction/AppTargetEvent;

    .line 113
    .local v0, "other":Landroid/app/prediction/AppTargetEvent;
    iget-object v2, p0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    iget-object v3, v0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    invoke-virtual {v2, v3}, Landroid/app/prediction/AppTarget;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    iget v3, v0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 113
    :goto_1
    return v1
.end method

.method public whitelist getAction()I
    .locals 1

    .line 105
    iget v0, p0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    return v0
.end method

.method public whitelist getLaunchLocation()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTarget()Landroid/app/prediction/AppTarget;
    .locals 1

    .line 90
    iget-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 125
    iget-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 126
    iget-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget v0, p0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return-void
.end method
