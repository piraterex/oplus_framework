.class public final Landroid/app/prediction/AppTarget;
.super Ljava/lang/Object;
.source "AppTarget.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/prediction/AppTarget$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/prediction/AppTarget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mClassName:Ljava/lang/String;

.field private final blacklist mId:Landroid/app/prediction/AppTargetId;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mRank:I

.field private final blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private final blacklist mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 305
    new-instance v0, Landroid/app/prediction/AppTarget$1;

    invoke-direct {v0}, Landroid/app/prediction/AppTarget$1;-><init>()V

    sput-object v0, Landroid/app/prediction/AppTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/prediction/AppTargetId;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Landroid/app/prediction/AppTargetId;
    .param p2, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p3, "className"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    .line 70
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 72
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    .line 73
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    .line 74
    iput-object p3, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/prediction/AppTarget;->mRank:I

    .line 76
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Landroid/app/prediction/AppTargetId;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p5, "className"    # Ljava/lang/String;
    .param p6, "rank"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    .line 81
    iput-object p4, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 82
    iput-object p2, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    .line 83
    iput-object p5, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    .line 85
    iput p6, p0, Landroid/app/prediction/AppTarget;->mRank:I

    .line 86
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;ILandroid/app/prediction/AppTarget-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/app/prediction/AppTarget;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "id"    # Landroid/app/prediction/AppTargetId;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 56
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    .line 58
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/prediction/AppTarget;->mRank:I

    .line 60
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Landroid/app/prediction/AppTargetId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/prediction/AppTargetId;

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    .line 90
    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 91
    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    .line 96
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    .line 98
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/prediction/AppTarget;->mRank:I

    .line 100
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/prediction/AppTarget-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/prediction/AppTarget;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 153
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

    .line 155
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/prediction/AppTarget;

    .line 156
    .local v0, "other":Landroid/app/prediction/AppTarget;
    iget-object v2, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v4, v0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    if-eqz v4, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    iget-object v4, v0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    .line 157
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v1

    .line 158
    .local v2, "sameClassName":Z
    :goto_1
    iget-object v4, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez v4, :cond_5

    iget-object v5, v0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v5, :cond_6

    :cond_5
    if-eqz v4, :cond_7

    iget-object v5, v0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v5, :cond_7

    .line 160
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_7

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v4, v1

    .line 161
    .local v4, "sameShortcutInfo":Z
    :goto_2
    iget-object v5, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    iget-object v6, v0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    invoke-virtual {v5, v6}, Landroid/app/prediction/AppTargetId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    .line 162
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    iget-object v5, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    iget-object v6, v0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    .line 164
    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v4, :cond_8

    iget v5, p0, Landroid/app/prediction/AppTarget;->mRank:I

    iget v6, v0, Landroid/app/prediction/AppTarget;->mRank:I

    if-ne v5, v6, :cond_8

    move v1, v3

    goto :goto_3

    :cond_8
    nop

    .line 161
    :goto_3
    return v1
.end method

.method public whitelist getClassName()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()Landroid/app/prediction/AppTargetId;
    .locals 1

    .line 107
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRank()I
    .locals 1

    .line 148
    iget v0, p0, Landroid/app/prediction/AppTarget;->mRank:I

    return v0
.end method

.method public whitelist getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public whitelist getUser()Landroid/os/UserHandle;
    .locals 1

    .line 131
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 176
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 177
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 178
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    :cond_0
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget v0, p0, Landroid/app/prediction/AppTarget;->mRank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    return-void
.end method
