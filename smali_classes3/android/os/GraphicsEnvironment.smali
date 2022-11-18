.class public Landroid/os/GraphicsEnvironment;
.super Ljava/lang/Object;
.source "GraphicsEnvironment.java"


# static fields
.field private static final blacklist ACTION_ANGLE_FOR_ANDROID:Ljava/lang/String; = "android.app.action.ANGLE_FOR_ANDROID"

.field private static final blacklist ACTION_ANGLE_FOR_ANDROID_TOAST_MESSAGE:Ljava/lang/String; = "android.app.action.ANGLE_FOR_ANDROID_TOAST_MESSAGE"

.field private static final blacklist ANGLE_DRIVER_NAME:Ljava/lang/String; = "angle"

.field private static final blacklist ANGLE_DRIVER_VERSION_CODE:J = 0x0L

.field private static final blacklist ANGLE_DRIVER_VERSION_NAME:Ljava/lang/String; = ""

.field private static final blacklist ANGLE_GL_DRIVER_ALL_ANGLE_OFF:I = 0x0

.field private static final blacklist ANGLE_GL_DRIVER_ALL_ANGLE_ON:I = 0x1

.field private static final blacklist ANGLE_GL_DRIVER_CHOICE_ANGLE:Ljava/lang/String; = "angle"

.field private static final blacklist ANGLE_GL_DRIVER_CHOICE_DEFAULT:Ljava/lang/String; = "default"

.field private static final blacklist ANGLE_GL_DRIVER_CHOICE_NATIVE:Ljava/lang/String; = "native"

.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist INTENT_KEY_A4A_TOAST_MESSAGE:Ljava/lang/String; = "A4A Toast Message"

.field private static final blacklist METADATA_DEVELOPER_DRIVER_ENABLE:Ljava/lang/String; = "com.android.graphics.developerdriver.enable"

.field private static final blacklist METADATA_DRIVER_BUILD_TIME:Ljava/lang/String; = "com.android.graphics.driver.build_time"

.field private static final blacklist METADATA_INJECT_LAYERS_ENABLE:Ljava/lang/String; = "com.android.graphics.injectLayers.enable"

.field private static final blacklist PROPERTY_GFX_DRIVER_BUILD_TIME:Ljava/lang/String; = "ro.gfx.driver_build_time"

.field private static final blacklist PROPERTY_GFX_DRIVER_PRERELEASE:Ljava/lang/String; = "ro.gfx.driver.1"

.field private static final blacklist PROPERTY_GFX_DRIVER_PRODUCTION:Ljava/lang/String; = "ro.gfx.driver.0"

.field private static final blacklist SYSTEM_DRIVER_NAME:Ljava/lang/String; = "system"

.field private static final blacklist SYSTEM_DRIVER_VERSION_CODE:J = 0x0L

.field private static final blacklist SYSTEM_DRIVER_VERSION_NAME:Ljava/lang/String; = ""

.field private static final greylist-max-o TAG:Ljava/lang/String; = "GraphicsEnvironment"

.field private static final blacklist UPDATABLE_DRIVER_ALLOWLIST_ALL:Ljava/lang/String; = "*"

.field private static final blacklist UPDATABLE_DRIVER_GLOBAL_OPT_IN_DEFAULT:I = 0x0

.field private static final blacklist UPDATABLE_DRIVER_GLOBAL_OPT_IN_OFF:I = 0x3

.field private static final blacklist UPDATABLE_DRIVER_GLOBAL_OPT_IN_PRERELEASE_DRIVER:I = 0x2

.field private static final blacklist UPDATABLE_DRIVER_GLOBAL_OPT_IN_PRODUCTION_DRIVER:I = 0x1

.field private static final blacklist UPDATABLE_DRIVER_SPHAL_LIBRARIES_FILENAME:Ljava/lang/String; = "sphal_libraries.txt"

.field private static final blacklist VULKAN_1_0:I = 0x400000

.field private static final blacklist VULKAN_1_1:I = 0x401000

.field private static final blacklist VULKAN_1_2:I = 0x402000

.field private static final blacklist VULKAN_1_3:I = 0x403000

.field private static final greylist-max-o sInstance:Landroid/os/GraphicsEnvironment;


# instance fields
.field private blacklist mAngleOptInIndex:I

.field private greylist-max-o mClassLoader:Ljava/lang/ClassLoader;

.field private blacklist mGameManager:Landroid/app/GameManager;

.field private blacklist mLibraryPermittedPaths:Ljava/lang/String;

.field private blacklist mLibrarySearchPaths:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Landroid/os/GraphicsEnvironment;

    invoke-direct {v0}, Landroid/os/GraphicsEnvironment;-><init>()V

    sput-object v0, Landroid/os/GraphicsEnvironment;->sInstance:Landroid/os/GraphicsEnvironment;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/GraphicsEnvironment;->mAngleOptInIndex:I

    return-void
.end method

.method private blacklist canInjectLayers(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 241
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.graphics.injectLayers.enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Landroid/os/GraphicsEnvironment;->setInjectLayersPrSetDumpable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0
.end method

.method private static greylist-max-o chooseAbi(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 837
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, "isa":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 839
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    return-object v1

    .line 842
    :cond_0
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 843
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 844
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    return-object v1

    .line 846
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist chooseDriver(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "coreSettings"    # Landroid/os/Bundle;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 772
    move-object/from16 v1, p0

    const-string v2, "GraphicsEnvironment"

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    invoke-direct {v1, v3, v4}, Landroid/os/GraphicsEnvironment;->chooseDriverInternal(Landroid/os/Bundle;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v13

    .line 773
    .local v13, "driverPackageName":Ljava/lang/String;
    const/4 v5, 0x0

    if-nez v13, :cond_0

    .line 774
    return v5

    .line 779
    :cond_0
    const v0, 0x100080

    move-object/from16 v14, p3

    :try_start_0
    invoke-virtual {v14, v13, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    .local v0, "driverPackageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 788
    iget-object v15, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 789
    .local v15, "driverAppInfo":Landroid/content/pm/ApplicationInfo;
    iget v6, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x1a

    if-ge v6, v7, :cond_1

    .line 793
    return v5

    .line 796
    :cond_1
    invoke-static {v15}, Landroid/os/GraphicsEnvironment;->chooseAbi(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v12

    .line 797
    .local v12, "abi":Ljava/lang/String;
    if-nez v12, :cond_2

    .line 804
    return v5

    .line 807
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v5

    .line 808
    .local v11, "sb":Ljava/lang/StringBuilder;
    iget-object v5, v15, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 809
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    iget-object v5, v15, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 811
    const-string v6, "!/lib/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 812
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 814
    .local v9, "paths":Ljava/lang/String;
    move-object/from16 v10, p1

    invoke-direct {v1, v10, v13}, Landroid/os/GraphicsEnvironment;->getSphalLibraries(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 815
    .local v7, "sphalLibraries":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updatable driver package search path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", required sphal libraries: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-static {v9, v7}, Landroid/os/GraphicsEnvironment;->setDriverPathAndSphalLibraries(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v5, v15, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_5

    .line 823
    iget-object v5, v15, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "com.android.graphics.driver.build_time"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 824
    .local v5, "driverBuildTime":Ljava/lang/String;
    const/4 v8, 0x1

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v8, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v5

    goto :goto_1

    .line 825
    :cond_4
    :goto_0
    const-string v6, "com.android.graphics.driver.build_time is not set"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const-string v5, "L0"

    move-object v2, v5

    .line 830
    .end local v5    # "driverBuildTime":Ljava/lang/String;
    .local v2, "driverBuildTime":Ljava/lang/String;
    :goto_1
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v16, v0

    .end local v0    # "driverPackageInfo":Landroid/content/pm/PackageInfo;
    .local v16, "driverPackageInfo":Landroid/content/pm/PackageInfo;
    iget-wide v0, v15, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 831
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/16 v19, 0x0

    .line 830
    move-object v5, v13

    move-object/from16 v20, v7

    move/from16 v21, v8

    .end local v7    # "sphalLibraries":Ljava/lang/String;
    .local v20, "sphalLibraries":Ljava/lang/String;
    move-wide v7, v0

    move-object v0, v9

    .end local v9    # "paths":Ljava/lang/String;
    .local v0, "paths":Ljava/lang/String;
    move-wide/from16 v9, v17

    move-object v1, v11

    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v11, p4

    move-object/from16 v17, v12

    .end local v12    # "abi":Ljava/lang/String;
    .local v17, "abi":Ljava/lang/String;
    move/from16 v12, v19

    invoke-static/range {v5 .. v12}, Landroid/os/GraphicsEnvironment;->setGpuStats(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V

    .line 833
    return v21

    .line 820
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "driverBuildTime":Ljava/lang/String;
    .end local v16    # "driverPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "abi":Ljava/lang/String;
    .end local v20    # "sphalLibraries":Ljava/lang/String;
    .local v0, "driverPackageInfo":Landroid/content/pm/PackageInfo;
    .restart local v7    # "sphalLibraries":Ljava/lang/String;
    .restart local v9    # "paths":Ljava/lang/String;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v12    # "abi":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v5, "apk\'s meta-data cannot be null"

    invoke-direct {v2, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 781
    .end local v0    # "driverPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "sphalLibraries":Ljava/lang/String;
    .end local v9    # "paths":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "abi":Ljava/lang/String;
    .end local v15    # "driverAppInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 782
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updatable driver package \'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\' not installed"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return v5
.end method

.method private blacklist chooseDriverInternal(Landroid/os/Bundle;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 11
    .param p1, "coreSettings"    # Landroid/os/Bundle;
    .param p2, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 671
    const-string/jumbo v0, "ro.gfx.driver.0"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "productionDriver":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 674
    .local v3, "hasProductionDriver":Z
    :goto_0
    const-string/jumbo v4, "ro.gfx.driver.1"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 675
    .local v4, "prereleaseDriver":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    .line 677
    .local v5, "hasPrereleaseDriver":Z
    :goto_1
    const-string v6, "GraphicsEnvironment"

    const/4 v7, 0x0

    if-nez v3, :cond_2

    if-nez v5, :cond_2

    .line 678
    const-string v1, "Neither updatable production driver nor prerelease driver is supported."

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-object v7

    .line 685
    :cond_2
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_3

    .line 693
    :cond_3
    iget-object v8, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_4

    iget-object v8, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 694
    const-string v9, "com.android.graphics.developerdriver.enable"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 695
    :cond_4
    invoke-static {}, Landroid/os/GraphicsEnvironment;->isDebuggable()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    goto :goto_2

    :cond_6
    move v1, v2

    .line 704
    .local v1, "enablePrereleaseDriver":Z
    :goto_2
    const-string/jumbo v8, "updatable_driver_all_apps"

    invoke-virtual {p1, v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 719
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 720
    .local v2, "appPackageName":Ljava/lang/String;
    const-string/jumbo v8, "updatable_driver_production_opt_out_apps"

    invoke-static {v7, p1, v8}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 722
    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 723
    const-string v8, "App opts out for updatable production driver."

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-object v7

    .line 706
    .end local v2    # "appPackageName":Ljava/lang/String;
    :pswitch_0
    const-string v2, "The updatable driver is turned off on this device."

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return-object v7

    .line 712
    :pswitch_1
    const-string v2, "All apps opt in to use updatable prerelease driver."

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    if-eqz v5, :cond_7

    if-eqz v1, :cond_7

    move-object v7, v4

    :cond_7
    return-object v7

    .line 709
    :pswitch_2
    const-string v2, "All apps opt in to use updatable production driver."

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    if-eqz v3, :cond_8

    move-object v7, v0

    :cond_8
    return-object v7

    .line 727
    .restart local v2    # "appPackageName":Ljava/lang/String;
    :cond_9
    const-string/jumbo v8, "updatable_driver_prerelease_opt_in_apps"

    invoke-static {v7, p1, v8}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 729
    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 730
    const-string v8, "App opts in for updatable prerelease driver."

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    if-eqz v5, :cond_a

    if-eqz v1, :cond_a

    move-object v7, v4

    :cond_a
    return-object v7

    .line 735
    :cond_b
    if-nez v3, :cond_c

    .line 736
    const-string v8, "Updatable production driver is not supported on the device."

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-object v7

    .line 740
    :cond_c
    nop

    .line 741
    const-string/jumbo v8, "updatable_driver_production_opt_in_apps"

    invoke-static {v7, p1, v8}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 743
    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 744
    .local v8, "isOptIn":Z
    nop

    .line 745
    const-string/jumbo v9, "updatable_driver_production_allowlist"

    invoke-static {v7, p1, v9}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 747
    .local v9, "allowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v8, :cond_d

    const-string v10, "*"

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-eqz v10, :cond_d

    .line 748
    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 749
    const-string v10, "App is not on the allowlist for updatable production driver."

    invoke-static {v6, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-object v7

    .line 755
    :cond_d
    if-nez v8, :cond_e

    .line 756
    const-string/jumbo v10, "updatable_driver_production_denylist"

    invoke-static {v7, p1, v10}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 758
    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 759
    const-string v10, "App is on the denylist for updatable production driver."

    invoke-static {v6, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    return-object v7

    .line 763
    :cond_e
    return-object v0

    .line 690
    .end local v1    # "enablePrereleaseDriver":Z
    .end local v2    # "appPackageName":Ljava/lang/String;
    .end local v8    # "isOptIn":Z
    .end local v9    # "allowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f
    :goto_3
    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist debugLayerEnabled(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "coreSettings"    # Landroid/os/Bundle;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 329
    invoke-static {}, Landroid/os/GraphicsEnvironment;->isDebuggable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Landroid/os/GraphicsEnvironment;->canInjectLayers(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    return v1

    .line 332
    :cond_0
    const-string v0, "enable_gpu_debug_layers"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 333
    .local v0, "enable":I
    if-nez v0, :cond_1

    .line 334
    return v1

    .line 336
    :cond_1
    const-string/jumbo v2, "gpu_debug_app"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "gpuDebugApp":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 338
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 339
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 342
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 340
    :cond_3
    :goto_0
    return v1
.end method

.method private blacklist getAngleDebugPackage(Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "coreSettings"    # Landroid/os/Bundle;

    .line 497
    invoke-static {}, Landroid/os/GraphicsEnvironment;->isDebuggable()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 498
    return-object v1

    .line 502
    :cond_0
    const-string v0, "angle_debug_package"

    if-eqz p2, :cond_1

    .line 503
    nop

    .line 504
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "debugPackage":Ljava/lang/String;
    goto :goto_0

    .line 506
    .end local v0    # "debugPackage":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 507
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {v2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v0    # "debugPackage":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 511
    return-object v1

    .line 513
    :cond_2
    return-object v0
.end method

.method private blacklist getAngleEglFeatures(Landroid/content/Context;Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "coreSettings"    # Landroid/os/Bundle;

    .line 655
    iget v0, p0, Landroid/os/GraphicsEnvironment;->mAngleOptInIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 656
    return-object v1

    .line 659
    :cond_0
    nop

    .line 660
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 659
    const-string v2, "angle_egl_features"

    invoke-static {v0, p2, v2}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 661
    .local v0, "featuresLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Landroid/os/GraphicsEnvironment;->mAngleOptInIndex:I

    if-gt v2, v3, :cond_1

    .line 662
    return-object v1

    .line 664
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getAnglePackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 7
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 474
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ANGLE_FOR_ANDROID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 477
    const/high16 v1, 0x100000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 478
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid number of ANGLE packages. Required: 1, Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 480
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 479
    const-string v3, "GraphicsEnvironment"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 482
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found ANGLE package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 484
    :cond_0
    const-string v2, ""

    return-object v2

    .line 488
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v2
.end method

.method private static blacklist getAppInfoWithMetadata(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 411
    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 412
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    move-object v0, v1

    .line 417
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v0
.end method

.method private blacklist getDebugLayerAppPaths(Landroid/content/pm/IPackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 301
    const-string v0, ""

    const-wide/32 v1, 0x20000

    .line 302
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 301
    invoke-interface {p1, p2, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 306
    if-nez v1, :cond_0

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug layer app \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GraphicsEnvironment"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-object v0

    .line 311
    :cond_0
    invoke-static {v1}, Landroid/os/GraphicsEnvironment;->chooseAbi(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "abi":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 314
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 315
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 316
    const-string v4, "!/lib/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 317
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "paths":Ljava/lang/String;
    return-object v3

    .line 303
    .end local v0    # "abi":Ljava/lang/String;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "paths":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method private blacklist getDriverForPackage(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 422
    const-string v0, "angle_gl_driver_all_angle"

    if-eqz p2, :cond_0

    .line 423
    nop

    .line 424
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "allUseAngle":I
    goto :goto_0

    .line 426
    .end local v0    # "allUseAngle":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 427
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 431
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v0    # "allUseAngle":I
    :goto_0
    const/4 v1, 0x1

    const-string v2, "GraphicsEnvironment"

    if-ne v0, v1, :cond_1

    .line 432
    const-string v1, "Turn on ANGLE for all applications."

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v1, "angle"

    return-object v1

    .line 437
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "default"

    if-eqz v1, :cond_2

    .line 438
    return-object v3

    .line 441
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 442
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    nop

    .line 443
    const-string v4, "angle_gl_driver_selection_pkgs"

    invoke-static {v1, p2, v4}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 445
    .local v4, "optInPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 446
    const-string v5, "angle_gl_driver_selection_values"

    invoke-static {v1, p2, v5}, Landroid/os/GraphicsEnvironment;->getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 450
    .local v5, "optInValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 451
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Global.Settings values are invalid: number of packages: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 454
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", number of values: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 456
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 451
    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-object v3

    .line 460
    :cond_3
    invoke-static {p3, v4}, Landroid/os/GraphicsEnvironment;->getPackageIndex(Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    .line 462
    .local v2, "pkgIndex":I
    if-gez v2, :cond_4

    .line 463
    return-object v3

    .line 465
    :cond_4
    iput v2, p0, Landroid/os/GraphicsEnvironment;->mAngleOptInIndex:I

    .line 467
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3
.end method

.method private static blacklist getGlobalSettingsString(Landroid/content/ContentResolver;Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "globalSetting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 381
    if-eqz p1, :cond_0

    .line 382
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "settingsValue":Ljava/lang/String;
    goto :goto_0

    .line 384
    .end local v0    # "settingsValue":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .restart local v0    # "settingsValue":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 388
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v1, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 390
    .end local v1    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .restart local v1    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v1
.end method

.method public static greylist-max-o getInstance()Landroid/os/GraphicsEnvironment;
    .locals 1

    .line 62
    sget-object v0, Landroid/os/GraphicsEnvironment;->sInstance:Landroid/os/GraphicsEnvironment;

    return-object v0
.end method

.method private static blacklist getPackageIndex(Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 397
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 398
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    return v0

    .line 397
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    .end local v0    # "idx":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static native blacklist getShouldUseAngle(Ljava/lang/String;)Z
.end method

.method private blacklist getSphalLibraries(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "driverPackageName"    # Ljava/lang/String;

    .line 851
    const/4 v0, 0x4

    .line 852
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 853
    .local v0, "driverContext":Landroid/content/Context;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 854
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string/jumbo v4, "sphal_libraries.txt"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 855
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .local v2, "assetStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "assetString":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 857
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 859
    .end local v4    # "assetString":Ljava/lang/String;
    :cond_0
    const-string v3, ":"

    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 864
    .end local v0    # "driverContext":Landroid/content/Context;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "assetStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    goto :goto_1

    .line 860
    :catch_1
    move-exception v0

    .line 868
    nop

    .line 869
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method private blacklist getVulkanVersion(Landroid/content/pm/PackageManager;)I
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 218
    const-string v0, "android.hardware.vulkan.version"

    const v1, 0x403000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    return v1

    .line 222
    :cond_0
    const v1, 0x402000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    return v1

    .line 226
    :cond_1
    const v1, 0x401000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    return v1

    .line 230
    :cond_2
    const/high16 v1, 0x400000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    return v1

    .line 234
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static native blacklist hintActivityLaunch()V
.end method

.method private blacklist isAngleEnabledByGameMode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 176
    const-string v0, "GraphicsEnvironment"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/os/GraphicsEnvironment;->mGameManager:Landroid/app/GameManager;

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {v2, p2}, Landroid/app/GameManager;->isAngleEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 178
    .local v2, "gameModeEnabledAngle":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANGLE GameManagerService for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return v2

    .line 180
    .end local v2    # "gameModeEnabledAngle":Z
    :catch_0
    move-exception v2

    .line 181
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception while querying GameManagerService if ANGLE is enabled for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v2    # "e":Ljava/lang/SecurityException;
    return v1
.end method

.method private static native blacklist isDebuggable()Z
.end method

.method private static native blacklist setAngleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private static native greylist-max-o setDebugLayers(Ljava/lang/String;)V
.end method

.method private static native blacklist setDebugLayersGLES(Ljava/lang/String;)V
.end method

.method private static native blacklist setDriverPathAndSphalLibraries(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native blacklist setGpuStats(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V
.end method

.method private static native blacklist setInjectLayersPrSetDumpable()Z
.end method

.method private static native greylist-max-o setLayerPaths(Ljava/lang/ClassLoader;Ljava/lang/String;)V
.end method

.method private blacklist setupAndUseAngle(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 618
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/os/GraphicsEnvironment;->setupAngle(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Package \'"

    const-string v2, "GraphicsEnvironment"

    if-nez v0, :cond_0

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' should not use ANGLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v0, 0x0

    return v0

    .line 623
    :cond_0
    invoke-static {p2}, Landroid/os/GraphicsEnvironment;->getShouldUseAngle(Ljava/lang/String;)Z

    move-result v0

    .line 624
    .local v0, "useAngle":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' should use ANGLE = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return v0
.end method

.method private blacklist setupAngle(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 529
    invoke-direct {p0, p1, p2, p4}, Landroid/os/GraphicsEnvironment;->shouldUseAngle(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 530
    return v1

    .line 533
    :cond_0
    const/4 v0, 0x0

    .line 536
    .local v0, "angleInfo":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, p1, p2}, Landroid/os/GraphicsEnvironment;->getAngleDebugPackage(Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, "anglePkgName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const-string v4, "\' not installed"

    const-string v5, "GraphicsEnvironment"

    if-nez v3, :cond_1

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANGLE debug package enabled: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :try_start_0
    invoke-virtual {p3, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 545
    goto :goto_0

    .line 542
    :catch_0
    move-exception v3

    .line 543
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ANGLE debug package \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return v1

    .line 549
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 550
    invoke-direct {p0, p3}, Landroid/os/GraphicsEnvironment;->getAnglePackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    .line 551
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 552
    const-string v3, "Failed to find ANGLE package."

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return v1

    .line 556
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANGLE package enabled: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/high16 v3, 0x100000

    :try_start_1
    invoke-virtual {p3, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 564
    goto :goto_1

    .line 561
    :catch_1
    move-exception v3

    .line 562
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ANGLE package \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return v1

    .line 567
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/os/GraphicsEnvironment;->chooseAbi(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, "abi":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!/lib/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, "paths":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Landroid/os/GraphicsEnvironment;->getAngleEglFeatures(Landroid/content/Context;Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, "features":[Ljava/lang/String;
    invoke-direct {p0, p1, p4}, Landroid/os/GraphicsEnvironment;->isAngleEnabledByGameMode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 585
    .local v5, "gameModeEnabledAngle":Z
    if-eqz v5, :cond_4

    .line 586
    const-string v6, "angle"

    .local v6, "devOptIn":Ljava/lang/String;
    goto :goto_2

    .line 588
    .end local v6    # "devOptIn":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1, p2, p4}, Landroid/os/GraphicsEnvironment;->getDriverForPackage(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 590
    .restart local v6    # "devOptIn":Ljava/lang/String;
    :goto_2
    invoke-static {v3, p4, v6, v4}, Landroid/os/GraphicsEnvironment;->setAngleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 592
    const/4 v7, 0x1

    return v7
.end method

.method private blacklist setupGpuLayers(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "coreSettings"    # Landroid/os/Bundle;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 351
    invoke-direct {p0, p2, p4, p5}, Landroid/os/GraphicsEnvironment;->debugLayerEnabled(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    .line 352
    .local v0, "enabled":Z
    const-string v1, ""

    .line 353
    .local v1, "layerPaths":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 354
    iget-object v1, p0, Landroid/os/GraphicsEnvironment;->mLibraryPermittedPaths:Ljava/lang/String;

    .line 356
    const-string/jumbo v2, "gpu_debug_layers"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "layers":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vulkan debug layer list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GraphicsEnvironment"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 359
    invoke-static {v2}, Landroid/os/GraphicsEnvironment;->setDebugLayers(Ljava/lang/String;)V

    .line 362
    :cond_0
    nop

    .line 363
    const-string/jumbo v3, "gpu_debug_layers_gles"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, "layersGLES":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GLES debug layer list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 366
    invoke-static {v3}, Landroid/os/GraphicsEnvironment;->setDebugLayersGLES(Ljava/lang/String;)V

    .line 371
    .end local v2    # "layers":Ljava/lang/String;
    .end local v3    # "layersGLES":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/GraphicsEnvironment;->mLibrarySearchPaths:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    iget-object v2, p0, Landroid/os/GraphicsEnvironment;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v1}, Landroid/os/GraphicsEnvironment;->setLayerPaths(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private blacklist shouldShowAngleInUseDialogBox(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 600
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 601
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "show_angle_in_use_dialog_box"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    .local v2, "showDialogBox":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v3

    :cond_0
    return v0

    .line 605
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "showDialogBox":I
    :catch_0
    move-exception v1

    .line 610
    return v0
.end method

.method private blacklist shouldUseAngle(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "coreSettings"    # Landroid/os/Bundle;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 193
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "GraphicsEnvironment"

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "No package name specified, ANGLE should not be used"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return v1

    .line 198
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/GraphicsEnvironment;->getDriverForPackage(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "devOptIn":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANGLE Developer option for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' set to: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v3, "angle"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 205
    .local v3, "forceAngle":Z
    const-string/jumbo v4, "native"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 206
    .local v4, "forceNative":Z
    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    .line 207
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANGLE developer option for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_2
    invoke-direct {p0, p1, p3}, Landroid/os/GraphicsEnvironment;->isAngleEnabledByGameMode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 212
    .local v2, "gameModeEnabledAngle":Z
    if-nez v4, :cond_4

    if-nez v3, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method


# virtual methods
.method public blacklist getDebugLayerPathsFromSettings(Landroid/os/Bundle;Landroid/content/pm/IPackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "coreSettings"    # Landroid/os/Bundle;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 269
    invoke-direct {p0, p1, p3, p4}, Landroid/os/GraphicsEnvironment;->debugLayerEnabled(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    const/4 v0, 0x0

    return-object v0

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPU debug layers enabled for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphicsEnvironment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v0, ""

    .line 276
    .local v0, "debugLayerPaths":Ljava/lang/String;
    nop

    .line 277
    const-string/jumbo v2, "gpu_debug_layer_app"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "gpuDebugLayerApps":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPU debug layer apps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "layerApps":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 284
    aget-object v4, v1, v3

    invoke-direct {p0, p2, v4}, Landroid/os/GraphicsEnvironment;->getDebugLayerAppPaths(Landroid/content/pm/IPackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "paths":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .end local v4    # "paths":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    .end local v1    # "layerApps":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method public greylist-max-o setLayerPaths(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "searchPaths"    # Ljava/lang/String;
    .param p3, "permittedPaths"    # Ljava/lang/String;

    .line 253
    iput-object p1, p0, Landroid/os/GraphicsEnvironment;->mClassLoader:Ljava/lang/ClassLoader;

    .line 254
    iput-object p2, p0, Landroid/os/GraphicsEnvironment;->mLibrarySearchPaths:Ljava/lang/String;

    .line 255
    iput-object p3, p0, Landroid/os/GraphicsEnvironment;->mLibraryPermittedPaths:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public blacklist setup(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "coreSettings"    # Landroid/os/Bundle;

    .line 130
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 131
    .local v9, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 132
    .local v14, "packageName":Ljava/lang/String;
    nop

    .line 133
    invoke-static {v7, v9, v14}, Landroid/os/GraphicsEnvironment;->getAppInfoWithMetadata(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .line 135
    .local v15, "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    const-class v0, Landroid/app/GameManager;

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/GameManager;

    iput-object v0, v6, Landroid/os/GraphicsEnvironment;->mGameManager:Landroid/app/GameManager;

    .line 137
    const-wide/16 v12, 0x2

    const-string/jumbo v0, "setupGpuLayers"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v9

    move-object v4, v14

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Landroid/os/GraphicsEnvironment;->setupGpuLayers(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 139
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 141
    const-string/jumbo v0, "setupAngle"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "useAngle":Z
    invoke-direct {v6, v7, v8, v9, v14}, Landroid/os/GraphicsEnvironment;->setupAngle(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-direct {v6, v7, v8, v14}, Landroid/os/GraphicsEnvironment;->shouldUseAngle(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 146
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    .line 147
    invoke-direct {v6, v9}, Landroid/os/GraphicsEnvironment;->getVulkanVersion(Landroid/content/pm/PackageManager;)I

    move-result v17

    .line 146
    const-string v10, "angle"

    const-string v11, ""

    move-wide/from16 v18, v12

    move-wide v12, v1

    move-object/from16 v20, v14

    move-object v2, v15

    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    .local v2, "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    .local v20, "packageName":Ljava/lang/String;
    move-wide v14, v3

    move-object/from16 v16, v20

    invoke-static/range {v10 .. v17}, Landroid/os/GraphicsEnvironment;->setGpuStats(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V

    move/from16 v21, v0

    goto :goto_1

    .line 144
    .end local v2    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    .end local v20    # "packageName":Ljava/lang/String;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v15    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    :cond_0
    move-wide/from16 v18, v12

    move-object/from16 v20, v14

    move-object v2, v15

    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    .restart local v20    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 143
    .end local v2    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    .end local v20    # "packageName":Ljava/lang/String;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v15    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    :cond_1
    move-wide/from16 v18, v12

    move-object/from16 v20, v14

    move-object v2, v15

    .line 150
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    .restart local v20    # "packageName":Ljava/lang/String;
    :goto_0
    move/from16 v21, v0

    .end local v0    # "useAngle":Z
    .local v21, "useAngle":Z
    :goto_1
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 152
    const-string v0, "chooseDriver"

    move-wide/from16 v14, v18

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 153
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v12, v2

    .end local v2    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    .local v12, "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v2, p2

    move-object v3, v9

    move-object/from16 v4, v20

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Landroid/os/GraphicsEnvironment;->chooseDriver(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 154
    if-nez v21, :cond_2

    .line 155
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    .line 157
    const-string/jumbo v4, "ro.gfx.driver_build_time"

    invoke-static {v4, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 158
    invoke-direct {v6, v9}, Landroid/os/GraphicsEnvironment;->getVulkanVersion(Landroid/content/pm/PackageManager;)I

    move-result v17

    .line 155
    const-string/jumbo v10, "system"

    const-string v11, ""

    move-object v4, v12

    .end local v12    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    .local v4, "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    move-wide v12, v0

    move-wide v0, v14

    move-wide v14, v2

    move-object/from16 v16, v20

    invoke-static/range {v10 .. v17}, Landroid/os/GraphicsEnvironment;->setGpuStats(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V

    goto :goto_2

    .line 154
    .end local v4    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    :cond_2
    move-object v4, v12

    move-wide v0, v14

    .end local v12    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    goto :goto_2

    .line 153
    .end local v4    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    :cond_3
    move-object v4, v12

    move-wide v0, v14

    .line 161
    .end local v12    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfoWithMetaData":Landroid/content/pm/ApplicationInfo;
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 163
    const-string/jumbo v2, "notifyGraphicsEnvironmentSetup"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 164
    iget-object v2, v6, Landroid/os/GraphicsEnvironment;->mGameManager:Landroid/app/GameManager;

    if-eqz v2, :cond_4

    iget v2, v4, Landroid/content/pm/ApplicationInfo;->category:I

    if-nez v2, :cond_4

    .line 166
    iget-object v2, v6, Landroid/os/GraphicsEnvironment;->mGameManager:Landroid/app/GameManager;

    invoke-virtual {v2}, Landroid/app/GameManager;->notifyGraphicsEnvironmentSetup()V

    .line 168
    :cond_4
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 169
    return-void
.end method

.method public blacklist showAngleInUseDialogBox(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 634
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/os/GraphicsEnvironment;->shouldShowAngleInUseDialogBox(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Landroid/os/GraphicsEnvironment;->setupAndUseAngle(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.ANGLE_FOR_ANDROID_TOAST_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/os/GraphicsEnvironment;->getAnglePackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    .line 639
    .local v2, "anglePkg":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const/4 v5, 0x0

    new-instance v6, Landroid/os/GraphicsEnvironment$1;

    invoke-direct {v6, p0}, Landroid/os/GraphicsEnvironment$1;-><init>(Landroid/os/GraphicsEnvironment;)V

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move-object v4, v1

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 652
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "anglePkg":Ljava/lang/String;
    :cond_0
    return-void
.end method
