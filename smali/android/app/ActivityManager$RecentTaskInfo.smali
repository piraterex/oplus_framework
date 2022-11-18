.class public Landroid/app/ActivityManager$RecentTaskInfo;
.super Landroid/app/TaskInfo;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentTaskInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist affiliatedTaskId:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist childrenTaskInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist description:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist id:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

.field public whitelist persistentId:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 2173
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$RecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 2140
    invoke-direct {p0}, Landroid/app/TaskInfo;-><init>()V

    .line 2132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->childrenTaskInfos:Ljava/util/ArrayList;

    .line 2138
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 2141
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2143
    invoke-direct {p0}, Landroid/app/TaskInfo;-><init>()V

    .line 2132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->childrenTaskInfos:Ljava/util/ArrayList;

    .line 2138
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 2144
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RecentTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 2145
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$RecentTaskInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 2149
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;

    .line 2187
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "   "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2188
    const-string v1, " id="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2189
    const-string v1, " userId="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2190
    const-string v1, " hasTask="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2191
    const-string v1, " lastActiveTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 2192
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " baseIntent="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2193
    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 2194
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " baseActivity="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2195
    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2197
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    .line 2198
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " topActivity="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2200
    :cond_2
    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    .line 2201
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " origActivity="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2202
    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2204
    :cond_3
    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_4

    .line 2205
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " realActivity="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2206
    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2208
    :cond_4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2209
    const-string v1, " isExcluded="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2210
    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v4, 0x800000

    and-int/2addr v1, v4

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    move v1, v3

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2211
    const-string v1, " activityType="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ActivityManager$RecentTaskInfo;->getActivityType()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2212
    const-string v1, " windowingMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ActivityManager$RecentTaskInfo;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2213
    const-string v1, " supportsSplitScreenMultiWindow="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2214
    const-string v1, " supportsMultiWindow="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2215
    iget-boolean v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->supportsMultiWindow:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2216
    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const-string v4, " }"

    if-eqz v1, :cond_8

    .line 2217
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2218
    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 2219
    .local v1, "td":Landroid/app/ActivityManager$TaskDescription;
    const-string v5, " taskDescription {"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2220
    const-string v5, " colorBackground=#"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2221
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2222
    const-string v5, " colorPrimary=#"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2223
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2224
    const-string v5, " iconRes="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getIconResourcePackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getIconResource()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2226
    const-string v5, " iconBitmap="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2227
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :cond_7
    :goto_2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2228
    const-string v2, " resizeMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2229
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getResizeMode()I

    move-result v2

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2230
    const-string v2, " minWidth="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getMinWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2231
    const-string v2, " minHeight="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getMinHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2232
    const-string v2, " colorBackgroundFloating=#"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2233
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2234
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2236
    .end local v1    # "td":Landroid/app/ActivityManager$TaskDescription;
    :cond_8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2237
    const-string v0, " lastSnapshotData {"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " taskSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " contentInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " bufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2241
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2242
    return-void
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2153
    const-class v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 2154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 2155
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->childrenTaskInfos:Ljava/util/ArrayList;

    .line 2156
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    .line 2157
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    .line 2158
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    .line 2159
    invoke-super {p0, p1}, Landroid/app/TaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 2160
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2164
    iget v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2165
    iget v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2166
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->childrenTaskInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2167
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2168
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2169
    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2170
    invoke-super {p0, p1, p2}, Landroid/app/TaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2171
    return-void
.end method
