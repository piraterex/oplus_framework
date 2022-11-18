.class public Landroid/app/ActivityManager$TaskDescription;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$TaskDescription$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o ATTR_TASKDESCRIPTIONCOLOR_BACKGROUND:Ljava/lang/String; = "task_description_color_background"

.field private static final blacklist ATTR_TASKDESCRIPTIONCOLOR_BACKGROUND_FLOATING:Ljava/lang/String; = "task_description_color_background_floating"

.field private static final greylist-max-o ATTR_TASKDESCRIPTIONCOLOR_PRIMARY:Ljava/lang/String; = "task_description_color"

.field private static final greylist-max-o ATTR_TASKDESCRIPTIONICON_FILENAME:Ljava/lang/String; = "task_description_icon_filename"

.field private static final greylist-max-o ATTR_TASKDESCRIPTIONICON_RESOURCE:Ljava/lang/String; = "task_description_icon_resource"

.field private static final blacklist ATTR_TASKDESCRIPTIONICON_RESOURCE_PACKAGE:Ljava/lang/String; = "task_description_icon_package"

.field private static final greylist-max-o ATTR_TASKDESCRIPTIONLABEL:Ljava/lang/String; = "task_description_label"

.field public static final greylist-max-o ATTR_TASKDESCRIPTION_PREFIX:Ljava/lang/String; = "task_description_"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mColorBackground:I

.field private blacklist mColorBackgroundFloating:I

.field private greylist-max-o mColorPrimary:I

.field private blacklist mEnsureNavigationBarContrastWhenTransparent:Z

.field private blacklist mEnsureStatusBarContrastWhenTransparent:Z

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIconFilename:Ljava/lang/String;

.field private greylist-max-o mLabel:Ljava/lang/String;

.field private blacklist mMinHeight:I

.field private blacklist mMinWidth:I

.field private greylist-max-o mNavigationBarColor:I

.field private blacklist mResizeMode:I

.field private greylist-max-o mStatusBarColor:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1970
    new-instance v0, Landroid/app/ActivityManager$TaskDescription$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1432
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIZZIIII)V

    .line 1433
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .line 1493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1494
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1495
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1558
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->readFromParcel(Landroid/os/Parcel;)V

    .line 1559
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$TaskDescription-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 13
    .param p1, "label"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1422
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIZZIIII)V

    .line 1423
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .locals 15
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "iconRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1409
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v14}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIZZIIII)V

    .line 1411
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;II)V
    .locals 15
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "iconRes"    # I
    .param p3, "colorPrimary"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1391
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v14}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIZZIIII)V

    .line 1393
    if-eqz p3, :cond_1

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1394
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "A TaskDescription\'s primary color should be opaque"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1396
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 14
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1464
    if-eqz p2, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIZZIIII)V

    .line 1466
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 14
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "colorPrimary"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1447
    if-eqz p2, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p3

    invoke-direct/range {v1 .. v13}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIZZIIII)V

    .line 1449
    if-eqz p3, :cond_2

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 1450
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s primary color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1452
    :cond_2
    :goto_1
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIZZIIII)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "colorPrimary"    # I
    .param p4, "colorBackground"    # I
    .param p5, "statusBarColor"    # I
    .param p6, "navigationBarColor"    # I
    .param p7, "ensureStatusBarContrastWhenTransparent"    # Z
    .param p8, "ensureNavigationBarContrastWhenTransparent"    # Z
    .param p9, "resizeMode"    # I
    .param p10, "minWidth"    # I
    .param p11, "minHeight"    # I
    .param p12, "colorBackgroundFloating"    # I

    .line 1474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1475
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1476
    iput-object p2, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1477
    iput p3, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1478
    iput p4, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1479
    iput p5, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 1480
    iput p6, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 1481
    iput-boolean p7, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 1482
    iput-boolean p8, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 1484
    iput p9, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 1485
    iput p10, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 1486
    iput p11, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 1487
    iput p12, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 1488
    return-void
.end method

.method public static blacklist equals(Landroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskDescription;)Z
    .locals 1
    .param p0, "td1"    # Landroid/app/ActivityManager$TaskDescription;
    .param p1, "td2"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2021
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 2022
    const/4 v0, 0x1

    return v0

    .line 2023
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 2024
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2026
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "iconFilename"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 1748
    if-eqz p0, :cond_0

    .line 1750
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->-$$Nest$smgetTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityTaskManager;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1752
    :catch_0
    move-exception v0

    .line 1753
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1756
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o copyFrom(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1
    .param p1, "other"    # Landroid/app/ActivityManager$TaskDescription;

    .line 1502
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1503
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1504
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1505
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1506
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1507
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 1508
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 1509
    iget-boolean v0, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 1510
    iget-boolean v0, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 1512
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 1513
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 1514
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 1515
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 1516
    return-void
.end method

.method public greylist-max-o copyFromPreserveHiddenFields(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 2
    .param p1, "other"    # Landroid/app/ActivityManager$TaskDescription;

    .line 1524
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1525
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1526
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1527
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1529
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    if-eqz v0, :cond_0

    .line 1530
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1532
    :cond_0
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    if-eqz v0, :cond_1

    .line 1533
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 1535
    :cond_1
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    if-eqz v0, :cond_2

    .line 1536
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 1539
    :cond_2
    iget-boolean v0, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 1540
    iget-boolean v0, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 1543
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 1544
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 1546
    :cond_3
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 1547
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 1549
    :cond_4
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    if-eq v0, v1, :cond_5

    .line 1550
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 1552
    :cond_5
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    if-eqz v0, :cond_6

    .line 1553
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 1555
    :cond_6
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 1914
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1997
    instance-of v0, p1, Landroid/app/ActivityManager$TaskDescription;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1998
    return v1

    .line 2001
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    .line 2002
    .local v0, "other":Landroid/app/ActivityManager$TaskDescription;
    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 2003
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, v0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    iget-boolean v3, v0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    iget-boolean v3, v0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 2002
    :goto_0
    return v1
.end method

.method public whitelist getBackgroundColor()I
    .locals 1

    .line 1772
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    return v0
.end method

.method public blacklist getBackgroundColorFloating()I
    .locals 1

    .line 1780
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    return v0
.end method

.method public blacklist getEnsureNavigationBarContrastWhenTransparent()Z
    .locals 1

    .line 1818
    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    return v0
.end method

.method public blacklist getEnsureStatusBarContrastWhenTransparent()Z
    .locals 1

    .line 1803
    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    return v0
.end method

.method public whitelist getIcon()Landroid/graphics/Bitmap;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1698
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1699
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1700
    return-object v0

    .line 1702
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getIconFilename()Ljava/lang/String;
    .locals 1

    .line 1733
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIconResource()I
    .locals 2

    .line 1724
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1725
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    return v0

    .line 1727
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIconResourcePackage()Ljava/lang/String;
    .locals 2

    .line 1715
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1716
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1718
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public greylist getInMemoryIcon()Landroid/graphics/Bitmap;
    .locals 2

    .line 1739
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1740
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1742
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/String;
    .locals 1

    .line 1672
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMinHeight()I
    .locals 1

    .line 1848
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    return v0
.end method

.method public blacklist getMinWidth()I
    .locals 1

    .line 1841
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    return v0
.end method

.method public whitelist getNavigationBarColor()I
    .locals 1

    .line 1796
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    return v0
.end method

.method public whitelist getPrimaryColor()I
    .locals 1

    .line 1764
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    return v0
.end method

.method public blacklist getRawIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 1708
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getResizeMode()I
    .locals 1

    .line 1834
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    return v0
.end method

.method public whitelist getStatusBarColor()I
    .locals 1

    .line 1788
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    return v0
.end method

.method public blacklist loadIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    .line 1681
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    .line 1682
    return-object v0

    .line 1684
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1685
    .local v0, "loadedIcon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 1686
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 1688
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1953
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1954
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 1955
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1957
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1958
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1959
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 1960
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 1961
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 1962
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 1963
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 1964
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 1965
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 1966
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1967
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 1968
    return-void
.end method

.method public blacklist restoreFromXml(Landroid/util/TypedXmlPullParser;)V
    .locals 8
    .param p1, "in"    # Landroid/util/TypedXmlPullParser;

    .line 1878
    const/4 v0, 0x0

    const-string/jumbo v1, "task_description_label"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1879
    .local v1, "label":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1880
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    .line 1882
    :cond_0
    const-string/jumbo v2, "task_description_color"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 1884
    .local v2, "colorPrimary":I
    if-eqz v2, :cond_1

    .line 1885
    invoke-virtual {p0, v2}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 1887
    :cond_1
    const-string/jumbo v4, "task_description_color_background"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 1889
    .local v4, "colorBackground":I
    if-eqz v4, :cond_2

    .line 1890
    invoke-virtual {p0, v4}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 1892
    :cond_2
    const-string/jumbo v5, "task_description_color_background_floating"

    invoke-interface {p1, v0, v5, v3}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 1894
    .local v5, "colorBackgroundFloating":I
    if-eqz v5, :cond_3

    .line 1895
    invoke-virtual {p0, v5}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    .line 1897
    :cond_3
    const-string/jumbo v6, "task_description_icon_filename"

    invoke-interface {p1, v0, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1899
    .local v6, "iconFilename":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 1900
    invoke-virtual {p0, v6}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 1902
    :cond_4
    const-string/jumbo v7, "task_description_icon_resource"

    invoke-interface {p1, v0, v7, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 1904
    .local v3, "iconResourceId":I
    const-string/jumbo v7, "task_description_icon_package"

    invoke-interface {p1, v0, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1906
    .local v0, "iconResourcePackage":Ljava/lang/String;
    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 1907
    invoke-static {v0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 1910
    :cond_5
    return-void
.end method

.method public blacklist saveToXml(Landroid/util/TypedXmlSerializer;)V
    .locals 3
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1853
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1854
    const-string/jumbo v2, "task_description_label"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1856
    :cond_0
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    if-eqz v0, :cond_1

    .line 1857
    const-string/jumbo v2, "task_description_color"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1859
    :cond_1
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    if-eqz v0, :cond_2

    .line 1860
    const-string/jumbo v2, "task_description_color_background"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1862
    :cond_2
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    if-eqz v0, :cond_3

    .line 1863
    const-string/jumbo v2, "task_description_color_background_floating"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1866
    :cond_3
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1867
    const-string/jumbo v2, "task_description_icon_filename"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1869
    :cond_4
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 1870
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    const-string/jumbo v2, "task_description_icon_resource"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1871
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1872
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    .line 1871
    const-string/jumbo v2, "task_description_icon_package"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1874
    :cond_5
    return-void
.end method

.method public greylist-max-o setBackgroundColor(I)V
    .locals 2
    .param p1, "backgroundColor"    # I

    .line 1587
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1588
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s background color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1590
    :cond_1
    :goto_0
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1591
    return-void
.end method

.method public blacklist setBackgroundColorFloating(I)V
    .locals 2
    .param p1, "backgroundColor"    # I

    .line 1599
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1600
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s background color floating should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1603
    :cond_1
    :goto_0
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 1604
    return-void
.end method

.method public blacklist setEnsureNavigationBarContrastWhenTransparent(Z)V
    .locals 0
    .param p1, "ensureNavigationBarContrastWhenTransparent"    # Z

    .line 1826
    iput-boolean p1, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 1828
    return-void
.end method

.method public blacklist setEnsureStatusBarContrastWhenTransparent(Z)V
    .locals 0
    .param p1, "ensureStatusBarContrastWhenTransparent"    # Z

    .line 1811
    iput-boolean p1, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 1812
    return-void
.end method

.method public blacklist setIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 1625
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1626
    return-void
.end method

.method public greylist-max-o setIconFilename(Ljava/lang/String;)V
    .locals 1
    .param p1, "iconFilename"    # Ljava/lang/String;

    .line 1634
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1635
    if-eqz p1, :cond_0

    .line 1637
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1639
    :cond_0
    return-void
.end method

.method public greylist-max-o setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 1566
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1567
    return-void
.end method

.method public blacklist setMinHeight(I)V
    .locals 0
    .param p1, "minHeight"    # I

    .line 1665
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 1666
    return-void
.end method

.method public blacklist setMinWidth(I)V
    .locals 0
    .param p1, "minWidth"    # I

    .line 1656
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 1657
    return-void
.end method

.method public greylist-max-o setNavigationBarColor(I)V
    .locals 0
    .param p1, "navigationBarColor"    # I

    .line 1617
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 1618
    return-void
.end method

.method public greylist-max-o setPrimaryColor(I)V
    .locals 2
    .param p1, "primaryColor"    # I

    .line 1575
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1576
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s primary color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1578
    :cond_1
    :goto_0
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1579
    return-void
.end method

.method public blacklist setResizeMode(I)V
    .locals 0
    .param p1, "resizeMode"    # I

    .line 1647
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 1648
    return-void
.end method

.method public greylist-max-o setStatusBarColor(I)V
    .locals 0
    .param p1, "statusBarColor"    # I

    .line 1610
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 1611
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskDescription Label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IconFilename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " colorPrimary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " colorBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " statusBarColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1986
    iget-boolean v1, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    const-string v2, " (contrast when transparent)"

    const-string v3, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 1987
    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " navigationBarColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1988
    iget-boolean v1, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    if-eqz v1, :cond_1

    .line 1989
    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resizeMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 1990
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " colorBackgrounFloating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1982
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1919
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1920
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1922
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1923
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1925
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1926
    .local v0, "bitmapIcon":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1931
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1932
    iget-object v3, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 1929
    :cond_2
    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1934
    :goto_2
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1935
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1936
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1937
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    iget-boolean v3, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1939
    iget-boolean v3, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1940
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1941
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1942
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1943
    iget-object v3, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1944
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 1946
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1947
    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1949
    :goto_3
    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1950
    return-void
.end method
