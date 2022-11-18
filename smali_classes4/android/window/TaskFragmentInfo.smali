.class public final Landroid/window/TaskFragmentInfo;
.super Ljava/lang/Object;
.source "TaskFragmentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskFragmentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mFragmentToken:Landroid/os/IBinder;

.field private final blacklist mIsTaskClearedForReuse:Z

.field private final blacklist mIsTaskFragmentClearedForPip:Z

.field private final blacklist mIsVisible:Z

.field private final blacklist mMinimumDimensions:Landroid/graphics/Point;

.field private final blacklist mPositionInParent:Landroid/graphics/Point;

.field private final blacklist mRunningActivityCount:I

.field private final blacklist mToken:Landroid/window/WindowContainerToken;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 238
    new-instance v0, Landroid/window/TaskFragmentInfo$1;

    invoke-direct {v0}, Landroid/window/TaskFragmentInfo$1;-><init>()V

    sput-object v0, Landroid/window/TaskFragmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/window/WindowContainerToken;Landroid/content/res/Configuration;IZLjava/util/List;Landroid/graphics/Point;ZZLandroid/graphics/Point;)V
    .locals 5
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "token"    # Landroid/window/WindowContainerToken;
    .param p3, "configuration"    # Landroid/content/res/Configuration;
    .param p4, "runningActivityCount"    # I
    .param p5, "isVisible"    # Z
    .param p7, "positionInParent"    # Landroid/graphics/Point;
    .param p8, "isTaskClearedForReuse"    # Z
    .param p9, "isTaskFragmentClearedForPip"    # Z
    .param p10, "minimumDimensions"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/window/WindowContainerToken;",
            "Landroid/content/res/Configuration;",
            "IZ",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/graphics/Point;",
            "ZZ",
            "Landroid/graphics/Point;",
            ")V"
        }
    .end annotation

    .line 99
    .local p6, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mConfiguration:Landroid/content/res/Configuration;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    .line 71
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    .line 90
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    .line 100
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    iput-object v4, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    .line 101
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerToken;

    iput-object v4, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    .line 102
    invoke-virtual {v0, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 103
    iput p4, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    .line 104
    iput-boolean p5, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    .line 105
    invoke-interface {v1, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    invoke-virtual {v2, p7}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    .line 107
    iput-boolean p8, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    .line 108
    iput-boolean p9, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    .line 109
    invoke-virtual {v3, p10}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    .line 110
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentInfo;->mConfiguration:Landroid/content/res/Configuration;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    .line 71
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    .line 90
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    .line 211
    sget-object v4, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerToken;

    iput-object v4, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    .line 212
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    .line 215
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBinderList(Ljava/util/List;)V

    .line 216
    invoke-virtual {v2, p1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    .line 219
    invoke-virtual {v3, p1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    .line 220
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TaskFragmentInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/TaskFragmentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist equalsForTaskFragmentOrganizer(Landroid/window/TaskFragmentInfo;)Z
    .locals 3
    .param p1, "that"    # Landroid/window/TaskFragmentInfo;

    .line 193
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 194
    return v0

    .line 197
    :cond_0
    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    iget-object v2, p1, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    .line 198
    invoke-virtual {v1, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    iget v2, p1, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    iget-boolean v2, p1, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    if-ne v1, v2, :cond_1

    .line 201
    invoke-virtual {p0}, Landroid/window/TaskFragmentInfo;->getWindowingMode()I

    move-result v1

    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->getWindowingMode()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    iget-object v2, p1, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    .line 202
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    iget-object v2, p1, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    .line 203
    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    iget-boolean v2, p1, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    iget-boolean v2, p1, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    iget-object v2, p1, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    .line 206
    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 197
    :goto_0
    return v0
.end method

.method public blacklist getActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 124
    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public blacklist getFragmentToken()Landroid/os/IBinder;
    .locals 1

    .line 114
    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getMinimumHeight()I
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public blacklist getMinimumWidth()I
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public blacklist getPositionInParent()Landroid/graphics/Point;
    .locals 1

    .line 151
    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    return-object v0
.end method

.method public blacklist getRunningActivityCount()I
    .locals 1

    .line 136
    iget v0, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    return v0
.end method

.method public blacklist getToken()Landroid/window/WindowContainerToken;
    .locals 1

    .line 119
    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getWindowingMode()I
    .locals 1

    .line 165
    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    return v0
.end method

.method public blacklist hasRunningActivity()Z
    .locals 1

    .line 132
    iget v0, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    .line 128
    iget v0, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isTaskClearedForReuse()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    return v0
.end method

.method public blacklist isTaskFragmentClearedForPip()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    return v0
.end method

.method public blacklist isVisible()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskFragmentInfo{ fragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " runningActivityCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " activities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " positionInParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isTaskClearedForReuse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isTaskFragmentClearedForPip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minimumDimensions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 225
    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 226
    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 227
    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 228
    iget v0, p0, Landroid/window/TaskFragmentInfo;->mRunningActivityCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 230
    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mActivities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 231
    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mPositionInParent:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 232
    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskClearedForReuse:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 233
    iget-boolean v0, p0, Landroid/window/TaskFragmentInfo;->mIsTaskFragmentClearedForPip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 234
    iget-object v0, p0, Landroid/window/TaskFragmentInfo;->mMinimumDimensions:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 235
    return-void
.end method
