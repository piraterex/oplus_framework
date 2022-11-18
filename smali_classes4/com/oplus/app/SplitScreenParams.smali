.class public final Lcom/oplus/app/SplitScreenParams;
.super Ljava/lang/Object;
.source "SplitScreenParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/app/SplitScreenParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFillIntent:Landroid/content/Intent;

.field private blacklist mLaunchIntent:Landroid/app/PendingIntent;

.field private blacklist mPosition:I

.field private blacklist mSelfSplit:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/oplus/app/SplitScreenParams$1;

    invoke-direct {v0}, Lcom/oplus/app/SplitScreenParams$1;-><init>()V

    sput-object v0, Lcom/oplus/app/SplitScreenParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/app/SplitScreenParams;->mSelfSplit:Z

    .line 78
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/oplus/app/SplitScreenParams;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 79
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/oplus/app/SplitScreenParams;->mFillIntent:Landroid/content/Intent;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/app/SplitScreenParams;->mPosition:I

    .line 81
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/oplus/app/SplitScreenParams-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/app/SplitScreenParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/oplus/app/SplitScreenParams;)V
    .locals 4
    .param p1, "other"    # Lcom/oplus/app/SplitScreenParams;

    .line 91
    iget-boolean v0, p1, Lcom/oplus/app/SplitScreenParams;->mSelfSplit:Z

    iget-object v1, p1, Lcom/oplus/app/SplitScreenParams;->mLaunchIntent:Landroid/app/PendingIntent;

    iget-object v2, p1, Lcom/oplus/app/SplitScreenParams;->mFillIntent:Landroid/content/Intent;

    iget v3, p1, Lcom/oplus/app/SplitScreenParams;->mPosition:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oplus/app/SplitScreenParams;-><init>(ZLandroid/app/PendingIntent;Landroid/content/Intent;I)V

    .line 92
    return-void
.end method

.method public constructor blacklist <init>(ZLandroid/app/PendingIntent;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "selfSplit"    # Z
    .param p2, "launchIntent"    # Landroid/app/PendingIntent;
    .param p3, "fillIntent"    # Landroid/content/Intent;
    .param p4, "position"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean p1, p0, Lcom/oplus/app/SplitScreenParams;->mSelfSplit:Z

    .line 85
    iput-object p2, p0, Lcom/oplus/app/SplitScreenParams;->mLaunchIntent:Landroid/app/PendingIntent;

    .line 86
    iput-object p3, p0, Lcom/oplus/app/SplitScreenParams;->mFillIntent:Landroid/content/Intent;

    .line 87
    iput p4, p0, Lcom/oplus/app/SplitScreenParams;->mPosition:I

    .line 88
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFillIntent()Landroid/content/Intent;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/oplus/app/SplitScreenParams;->mFillIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getLaunchIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/oplus/app/SplitScreenParams;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public blacklist getLaunchPosition()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/oplus/app/SplitScreenParams;->mPosition:I

    return v0
.end method

.method public blacklist isSelfSplit()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/oplus/app/SplitScreenParams;->mSelfSplit:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 129
    iget-boolean v0, p0, Lcom/oplus/app/SplitScreenParams;->mSelfSplit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 130
    iget-object v0, p0, Lcom/oplus/app/SplitScreenParams;->mLaunchIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 131
    iget-object v0, p0, Lcom/oplus/app/SplitScreenParams;->mFillIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 132
    iget v0, p0, Lcom/oplus/app/SplitScreenParams;->mPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return-void
.end method
