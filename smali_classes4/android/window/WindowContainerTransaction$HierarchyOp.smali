.class public final Landroid/window/WindowContainerTransaction$HierarchyOp;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HierarchyOp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/WindowContainerTransaction$HierarchyOp;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HIERARCHY_OP_TYPE_ADD_RECT_INSETS_PROVIDER:I = 0x10

.field public static final blacklist HIERARCHY_OP_TYPE_CHILDREN_TASKS_REPARENT:I = 0x2

.field public static final blacklist HIERARCHY_OP_TYPE_CREATE_TASK_FRAGMENT:I = 0x7

.field public static final blacklist HIERARCHY_OP_TYPE_DELETE_TASK_FRAGMENT:I = 0x8

.field public static final blacklist HIERARCHY_OP_TYPE_LAUNCH_TASK:I = 0x5

.field public static final blacklist HIERARCHY_OP_TYPE_PENDING_INTENT:I = 0xc

.field public static final blacklist HIERARCHY_OP_TYPE_REMOVE_INSETS_PROVIDER:I = 0x11

.field public static final blacklist HIERARCHY_OP_TYPE_REORDER:I = 0x1

.field public static final blacklist HIERARCHY_OP_TYPE_REPARENT:I = 0x0

.field public static final blacklist HIERARCHY_OP_TYPE_REPARENT_ACTIVITY_TO_TASK_FRAGMENT:I = 0xa

.field public static final blacklist HIERARCHY_OP_TYPE_REPARENT_CHILDREN:I = 0xb

.field public static final blacklist HIERARCHY_OP_TYPE_REQUEST_FOCUS_ON_TASK_FRAGMENT:I = 0x12

.field public static final blacklist HIERARCHY_OP_TYPE_RESTORE_TRANSIENT_ORDER:I = 0xf

.field public static final blacklist HIERARCHY_OP_TYPE_SET_ADJACENT_ROOTS:I = 0x4

.field public static final blacklist HIERARCHY_OP_TYPE_SET_ADJACENT_TASK_FRAGMENTS:I = 0xd

.field public static final blacklist HIERARCHY_OP_TYPE_SET_LAUNCH_ADJACENT_FLAG_ROOT:I = 0x6

.field public static final blacklist HIERARCHY_OP_TYPE_SET_LAUNCH_ROOT:I = 0x3

.field public static final blacklist HIERARCHY_OP_TYPE_START_ACTIVITY_IN_TASK_FRAGMENT:I = 0x9

.field public static final blacklist HIERARCHY_OP_TYPE_START_SHORTCUT:I = 0xe

.field public static final blacklist LAUNCH_KEY_SHORTCUT_CALLING_PACKAGE:Ljava/lang/String; = "android:transaction.hop.shortcut_calling_package"

.field public static final blacklist LAUNCH_KEY_TASK_ID:Ljava/lang/String; = "android:transaction.hop.taskId"


# instance fields
.field private blacklist mActivityIntent:Landroid/content/Intent;

.field private blacklist mActivityTypes:[I

.field private blacklist mContainer:Landroid/os/IBinder;

.field private blacklist mInsetsProviderFrame:Landroid/graphics/Rect;

.field private blacklist mInsetsTypes:[I

.field private blacklist mLaunchOptions:Landroid/os/Bundle;

.field private blacklist mMoveAdjacentTogether:Z

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mReparent:Landroid/os/IBinder;

.field private blacklist mReparentTopOnly:Z

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private blacklist mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

.field private blacklist mToTop:Z

.field private final blacklist mType:I

.field private blacklist mWindowingModes:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmActivityIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActivityTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContainer(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInsetsProviderFrame(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInsetsTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsTypes:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLaunchOptions(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMoveAdjacentTogether(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mMoveAdjacentTogether:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReparent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReparentTopOnly(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShortcutInfo(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/pm/ShortcutInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTaskFragmentCreationOptions(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/window/TaskFragmentCreationParams;)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmToTop(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWindowingModes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1432
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$1;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$1;-><init>()V

    sput-object v0, Landroid/window/WindowContainerTransaction$HierarchyOp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .line 1215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1216
    iput p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    .line 1217
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/window/WindowContainerTransaction$HierarchyOp-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;-><init>(I)V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    .line 1239
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    .line 1240
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    .line 1241
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsTypes:[I

    .line 1242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    goto :goto_0

    .line 1245
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    .line 1247
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    .line 1248
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    .line 1249
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mMoveAdjacentTogether:Z

    .line 1250
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    .line 1251
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    .line 1252
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    .line 1253
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    .line 1254
    sget-object v0, Landroid/window/TaskFragmentCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskFragmentCreationParams;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

    .line 1255
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1256
    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 1257
    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/WindowContainerTransaction$HierarchyOp;)V
    .locals 1
    .param p1, "copy"    # Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 1219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1220
    iget v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    iput v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    .line 1221
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    .line 1222
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    .line 1223
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsTypes:[I

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsTypes:[I

    .line 1224
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    .line 1225
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    .line 1226
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    .line 1227
    iget-boolean v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mMoveAdjacentTogether:Z

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mMoveAdjacentTogether:Z

    .line 1228
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    .line 1229
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    .line 1230
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    .line 1231
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    .line 1232
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

    .line 1233
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1234
    iget-object v0, p1, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 1235
    return-void
.end method

.method public static blacklist createForAdjacentRoots(Landroid/os/IBinder;Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .locals 2
    .param p0, "root1"    # Landroid/os/IBinder;
    .param p1, "root2"    # Landroid/os/IBinder;
    .param p2, "moveTogether"    # Z

    .line 1177
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1178
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1179
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1180
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setMoveAdjacentTogether(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1181
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1177
    return-object v0
.end method

.method public static blacklist createForChildrenTasksReparent(Landroid/os/IBinder;Landroid/os/IBinder;[I[IZZ)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .locals 2
    .param p0, "currentParent"    # Landroid/os/IBinder;
    .param p1, "newParent"    # Landroid/os/IBinder;
    .param p2, "windowingModes"    # [I
    .param p3, "activityTypes"    # [I
    .param p4, "onTop"    # Z
    .param p5, "reparentTopOnly"    # Z

    .line 1155
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1156
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1157
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1158
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setWindowingModes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1159
    invoke-virtual {v0, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setActivityTypes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1160
    invoke-virtual {v0, p4}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1161
    invoke-virtual {v0, p5}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentTopOnly(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1162
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1155
    return-object v0
.end method

.method public static blacklist createForReorder(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .locals 2
    .param p0, "container"    # Landroid/os/IBinder;
    .param p1, "toTop"    # Z

    .line 1145
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1146
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1147
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1148
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1149
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1145
    return-object v0
.end method

.method public static blacklist createForReparent(Landroid/os/IBinder;Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .locals 2
    .param p0, "container"    # Landroid/os/IBinder;
    .param p1, "reparent"    # Landroid/os/IBinder;
    .param p2, "toTop"    # Z

    .line 1137
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1138
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1139
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1140
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1141
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1137
    return-object v0
.end method

.method public static blacklist createForSetLaunchAdjacentFlagRoot(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .locals 2
    .param p0, "container"    # Landroid/os/IBinder;
    .param p1, "clearRoot"    # Z

    .line 1208
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1209
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1210
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1211
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1208
    return-object v0
.end method

.method public static blacklist createForSetLaunchRoot(Landroid/os/IBinder;[I[I)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .locals 2
    .param p0, "container"    # Landroid/os/IBinder;
    .param p1, "windowingModes"    # [I
    .param p2, "activityTypes"    # [I

    .line 1167
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1168
    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1169
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setWindowingModes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1170
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setActivityTypes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1171
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1167
    return-object v0
.end method

.method public static blacklist createForStartShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .locals 3
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1197
    if-nez p2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 1198
    .local v0, "fullOptions":Landroid/os/Bundle;
    :goto_0
    const-string v1, "android:transaction.hop.shortcut_calling_package"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    new-instance v1, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1200
    invoke-virtual {v1, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 1201
    invoke-virtual {v1, v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 1202
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    .line 1199
    return-object v1
.end method

.method public static blacklist createForTaskLaunch(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;
    .locals 3
    .param p0, "taskId"    # I
    .param p1, "options"    # Landroid/os/Bundle;

    .line 1186
    if-nez p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 1187
    .local v0, "fullOptions":Landroid/os/Bundle;
    :goto_0
    const-string v1, "android:transaction.hop.taskId"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1188
    new-instance v1, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    const/4 v2, 0x1

    .line 1189
    invoke-virtual {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 1190
    invoke-virtual {v1, v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 1191
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    .line 1188
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1429
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActivityIntent()Landroid/content/Intent;
    .locals 1

    .line 1323
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getActivityTypes()[I
    .locals 1

    .line 1313
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    return-object v0
.end method

.method public blacklist getAdjacentRoot()Landroid/os/IBinder;
    .locals 1

    .line 1288
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getCallingActivity()Landroid/os/IBinder;
    .locals 1

    .line 1293
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getContainer()Landroid/os/IBinder;
    .locals 1

    .line 1283
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInsetsProviderFrame()Landroid/graphics/Rect;
    .locals 1

    .line 1278
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getInsetsTypes()[I
    .locals 1

    .line 1274
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsTypes:[I

    return-object v0
.end method

.method public blacklist getLaunchOptions()Landroid/os/Bundle;
    .locals 1

    .line 1318
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getMoveAdjacentTogether()Z
    .locals 1

    .line 1305
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mMoveAdjacentTogether:Z

    return v0
.end method

.method public blacklist getNewParent()Landroid/os/IBinder;
    .locals 1

    .line 1269
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 1333
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public blacklist getReparentTopOnly()Z
    .locals 1

    .line 1301
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    return v0
.end method

.method public blacklist getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 1

    .line 1338
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public blacklist getTaskFragmentCreationOptions()Landroid/window/TaskFragmentCreationParams;
    .locals 1

    .line 1328
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

    return-object v0
.end method

.method public blacklist getToTop()Z
    .locals 1

    .line 1297
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    return v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 1260
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    return v0
.end method

.method public blacklist getWindowingModes()[I
    .locals 1

    .line 1309
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    return-object v0
.end method

.method public blacklist isReparent()Z
    .locals 1

    .line 1264
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    .line 1343
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    const-string v1, " insetsType="

    const-string v2, " mToTop="

    const-string v3, " to "

    const-string v4, " mActivityType="

    const-string v5, " mWindowingMode="

    const-string/jumbo v6, "}"

    packed-switch v0, :pswitch_data_0

    .line 1396
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reparent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    .line 1398
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    .line 1399
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1396
    return-object v0

    .line 1394
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{requestFocusOnTaskFragment: container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1391
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{removeLocalInsetsProvider: container="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsTypes:[I

    .line 1392
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1391
    return-object v0

    .line 1387
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{addRectInsetsProvider: container="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " insetsProvidingFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsTypes:[I

    .line 1389
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1387
    return-object v0

    .line 1384
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{StartShortcut: options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1381
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{SetAdjacentTaskFragments: container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adjacentContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1378
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ReparentChildren: oldParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1375
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ReparentActivityToTaskFragment: fragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1372
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{StartActivityInTaskFragment: fragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1370
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{DeleteTaskFragment: taskFragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1368
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{CreateTaskFragment: options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1365
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{SetAdjacentFlagRoot: container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clearRoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1363
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{LaunchTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1359
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{SetAdjacentRoot: container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adjacentRoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMoveAdjacentTogether="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mMoveAdjacentTogether:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1350
    :pswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{SetLaunchRoot: container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    .line 1351
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    .line 1352
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1350
    return-object v0

    .line 1345
    :pswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ChildrenTasksReparent: from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReparentTopOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    .line 1347
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    .line 1348
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1345
    return-object v0

    .line 1357
    :pswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{reorder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "top"

    goto :goto_0

    :cond_0
    const-string v1, "bottom"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1354
    :pswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{reparent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "top of "

    goto :goto_1

    :cond_1
    const-string v1, "bottom of "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1405
    iget v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1406
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mContainer:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1407
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparent:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1408
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1409
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1410
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1411
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mInsetsProviderFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1413
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1415
    :goto_0
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mToTop:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1416
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mReparentTopOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1417
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mMoveAdjacentTogether:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1418
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mWindowingModes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1419
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1420
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mLaunchOptions:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1421
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1422
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mTaskFragmentCreationOptions:Landroid/window/TaskFragmentCreationParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1423
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1424
    iget-object v0, p0, Landroid/window/WindowContainerTransaction$HierarchyOp;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1425
    return-void
.end method
