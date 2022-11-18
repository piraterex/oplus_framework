.class public Landroid/app/ActivityOptions;
.super Landroid/app/ComponentOptions;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityOptions$SourceInfo;,
        Landroid/app/ActivityOptions$OnAnimationFinishedListener;,
        Landroid/app/ActivityOptions$OnAnimationStartedListener;
    }
.end annotation


# static fields
.field public static final greylist-max-o ANIM_CLIP_REVEAL:I = 0xb

.field public static final greylist-max-o ANIM_CUSTOM:I = 0x1

.field public static final greylist-max-o ANIM_CUSTOM_IN_PLACE:I = 0xa

.field public static final greylist-max-o ANIM_DEFAULT:I = 0x6

.field public static final blacklist ANIM_FROM_STYLE:I = 0xe

.field public static final greylist-max-o ANIM_LAUNCH_TASK_BEHIND:I = 0x7

.field public static final greylist-max-o ANIM_NONE:I = 0x0

.field public static final greylist-max-o ANIM_OPEN_CROSS_PROFILE_APPS:I = 0xc

.field public static final greylist-max-o ANIM_REMOTE_ANIMATION:I = 0xd

.field public static final greylist-max-o ANIM_SCALE_UP:I = 0x2

.field public static final greylist-max-o ANIM_SCENE_TRANSITION:I = 0x5

.field public static final greylist-max-o ANIM_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x9

.field public static final greylist-max-o ANIM_THUMBNAIL_ASPECT_SCALE_UP:I = 0x8

.field public static final greylist-max-o ANIM_THUMBNAIL_SCALE_DOWN:I = 0x4

.field public static final greylist-max-o ANIM_THUMBNAIL_SCALE_UP:I = 0x3

.field public static final blacklist ANIM_UNDEFINED:I = -0x1

.field public static final whitelist EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final whitelist EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"

.field private static final greylist-max-o KEY_ANIMATION_FINISHED_LISTENER:Ljava/lang/String; = "android:activity.animationFinishedListener"

.field public static final blacklist KEY_ANIM_BACKGROUND_COLOR:Ljava/lang/String; = "android:activity.backgroundColor"

.field public static final greylist-max-o KEY_ANIM_ENTER_RES_ID:Ljava/lang/String; = "android:activity.animEnterRes"

.field public static final greylist-max-o KEY_ANIM_EXIT_RES_ID:Ljava/lang/String; = "android:activity.animExitRes"

.field public static final greylist-max-o KEY_ANIM_HEIGHT:Ljava/lang/String; = "android:activity.animHeight"

.field public static final greylist-max-o KEY_ANIM_IN_PLACE_RES_ID:Ljava/lang/String; = "android:activity.animInPlaceRes"

.field private static final greylist-max-o KEY_ANIM_SPECS:Ljava/lang/String; = "android:activity.animSpecs"

.field public static final greylist-max-o KEY_ANIM_START_LISTENER:Ljava/lang/String; = "android:activity.animStartListener"

.field public static final greylist-max-o KEY_ANIM_START_X:Ljava/lang/String; = "android:activity.animStartX"

.field public static final greylist-max-o KEY_ANIM_START_Y:Ljava/lang/String; = "android:activity.animStartY"

.field public static final greylist-max-o KEY_ANIM_THUMBNAIL:Ljava/lang/String; = "android:activity.animThumbnail"

.field public static final greylist-max-o KEY_ANIM_TYPE:Ljava/lang/String; = "android:activity.animType"

.field public static final greylist-max-o KEY_ANIM_WIDTH:Ljava/lang/String; = "android:activity.animWidth"

.field private static final blacklist KEY_APPLY_ACTIVITY_FLAGS_FOR_BUBBLES:Ljava/lang/String; = "android:activity.applyActivityFlagsForBubbles"

.field private static final greylist-max-o KEY_AVOID_MOVE_TO_FRONT:Ljava/lang/String; = "android.activity.avoidMoveToFront"

.field private static final blacklist KEY_CALLER_DISPLAY_ID:Ljava/lang/String; = "android.activity.callerDisplayId"

.field private static final greylist-max-o KEY_DISALLOW_ENTER_PICTURE_IN_PICTURE_WHILE_LAUNCHING:Ljava/lang/String; = "android:activity.disallowEnterPictureInPictureWhileLaunching"

.field private static final blacklist KEY_DISMISS_KEYGUARD_IF_INSECURE:Ljava/lang/String; = "android.activity.dismissKeyguardIfInsecure"

.field private static final greylist-max-o KEY_EXIT_COORDINATOR_INDEX:Ljava/lang/String; = "android:activity.exitCoordinatorIndex"

.field private static final blacklist KEY_FREEZE_RECENT_TASKS_REORDERING:Ljava/lang/String; = "android.activity.freezeRecentTasksReordering"

.field private static final blacklist KEY_IGNORE_PENDING_INTENT_CREATOR_FOREGROUND_STATE:Ljava/lang/String; = "android.activity.ignorePendingIntentCreatorForegroundState"

.field private static final greylist-max-o KEY_INSTANT_APP_VERIFICATION_BUNDLE:Ljava/lang/String; = "android:instantapps.installerbundle"

.field private static final blacklist KEY_LAUNCHED_FROM_BUBBLE:Ljava/lang/String; = "android.activity.launchTypeBubble"

.field private static final greylist-max-o KEY_LAUNCH_ACTIVITY_TYPE:Ljava/lang/String; = "android.activity.activityType"

.field public static final greylist-max-o KEY_LAUNCH_BOUNDS:Ljava/lang/String; = "android:activity.launchBounds"

.field public static final blacklist KEY_LAUNCH_COOKIE:Ljava/lang/String; = "android.activity.launchCookie"

.field private static final greylist-max-o KEY_LAUNCH_DISPLAY_ID:Ljava/lang/String; = "android.activity.launchDisplayId"

.field private static final blacklist KEY_LAUNCH_INTO_PIP_PARAMS:Ljava/lang/String; = "android.activity.launchIntoPipParams"

.field public static final blacklist KEY_LAUNCH_ROOT_TASK_TOKEN:Ljava/lang/String; = "android.activity.launchRootTaskToken"

.field private static final blacklist KEY_LAUNCH_TASK_DISPLAY_AREA_TOKEN:Ljava/lang/String; = "android.activity.launchTaskDisplayAreaToken"

.field public static final blacklist KEY_LAUNCH_TASK_FRAGMENT_TOKEN:Ljava/lang/String; = "android.activity.launchTaskFragmentToken"

.field private static final greylist-max-o KEY_LAUNCH_TASK_ID:Ljava/lang/String; = "android.activity.launchTaskId"

.field private static final greylist-max-o KEY_LAUNCH_WINDOWING_MODE:Ljava/lang/String; = "android.activity.windowingMode"

.field public static final blacklist KEY_LEGACY_PERMISSION_PROMPT_ELIGIBLE:Ljava/lang/String; = "android:activity.legacyPermissionPromptEligible"

.field private static final greylist-max-o KEY_LOCK_TASK_MODE:Ljava/lang/String; = "android:activity.lockTaskMode"

.field private static final blacklist KEY_OVERRIDE_TASK_TRANSITION:Ljava/lang/String; = "android:activity.overrideTaskTransition"

.field public static final greylist-max-o KEY_PACKAGE_NAME:Ljava/lang/String; = "android:activity.packageName"

.field private static final blacklist KEY_PENDING_INTENT_LAUNCH_FLAGS:Ljava/lang/String; = "android.activity.pendingIntentLaunchFlags"

.field private static final greylist-max-o KEY_REMOTE_ANIMATION_ADAPTER:Ljava/lang/String; = "android:activity.remoteAnimationAdapter"

.field private static final blacklist KEY_REMOTE_TRANSITION:Ljava/lang/String; = "android:activity.remoteTransition"

.field private static final blacklist KEY_REMOVE_WITH_TASK_ORGANIZER:Ljava/lang/String; = "android.activity.removeWithTaskOrganizer"

.field private static final greylist-max-o KEY_RESULT_CODE:Ljava/lang/String; = "android:activity.resultCode"

.field private static final greylist-max-o KEY_RESULT_DATA:Ljava/lang/String; = "android:activity.resultData"

.field private static final greylist-max-o KEY_ROTATION_ANIMATION_HINT:Ljava/lang/String; = "android:activity.rotationAnimationHint"

.field private static final blacklist KEY_SOURCE_INFO:Ljava/lang/String; = "android.activity.sourceInfo"

.field private static final greylist-max-o KEY_SPECS_FUTURE:Ljava/lang/String; = "android:activity.specsFuture"

.field private static final blacklist KEY_SPLASH_SCREEN_STYLE:Ljava/lang/String; = "android.activity.splashScreenStyle"

.field public static final blacklist KEY_SPLASH_SCREEN_THEME:Ljava/lang/String; = "android.activity.splashScreenTheme"

.field private static final blacklist KEY_TASK_ALWAYS_ON_TOP:Ljava/lang/String; = "android.activity.alwaysOnTop"

.field private static final greylist-max-o KEY_TASK_OVERLAY:Ljava/lang/String; = "android.activity.taskOverlay"

.field private static final greylist-max-o KEY_TASK_OVERLAY_CAN_RESUME:Ljava/lang/String; = "android.activity.taskOverlayCanResume"

.field private static final blacklist KEY_TRANSIENT_LAUNCH:Ljava/lang/String; = "android.activity.transientLaunch"

.field private static final greylist-max-o KEY_TRANSITION_COMPLETE_LISTENER:Ljava/lang/String; = "android:activity.transitionCompleteListener"

.field private static final greylist-max-o KEY_TRANSITION_IS_RETURNING:Ljava/lang/String; = "android:activity.transitionIsReturning"

.field private static final greylist-max-o KEY_TRANSITION_SHARED_ELEMENTS:Ljava/lang/String; = "android:activity.sharedElementNames"

.field private static final greylist-max-o KEY_USAGE_TIME_REPORT:Ljava/lang/String; = "android:activity.usageTimeReport"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActivityOptions"


# instance fields
.field public blacklist mActivityOptionsExt:Landroid/app/IActivityOptionsExt;

.field private greylist-max-o mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

.field private greylist-max-o mAnimationFinishedListener:Landroid/os/IRemoteCallback;

.field private greylist-max-o mAnimationStartedListener:Landroid/os/IRemoteCallback;

.field private greylist-max-o mAnimationType:I

.field private greylist-max-o mAppVerificationBundle:Landroid/os/Bundle;

.field private blacklist mApplyActivityFlagsForBubbles:Z

.field private greylist-max-o mAvoidMoveToFront:Z

.field private blacklist mCallerDisplayId:I

.field private blacklist mCustomBackgroundColor:I

.field private greylist-max-o mCustomEnterResId:I

.field private greylist-max-o mCustomExitResId:I

.field private greylist-max-o mCustomInPlaceResId:I

.field private greylist-max-o mDisallowEnterPictureInPictureWhileLaunching:Z

.field private blacklist mDismissKeyguardIfInsecure:Z

.field private greylist-max-o mExitCoordinatorIndex:I

.field private blacklist mFreezeRecentTasksReordering:Z

.field private greylist-max-o mHeight:I

.field private blacklist mIgnorePendingIntentCreatorForegroundState:Z

.field private blacklist mIsEligibleForLegacyPermissionPrompt:Z

.field private greylist-max-o mIsReturning:Z

.field private greylist-max-o mLaunchActivityType:I

.field private greylist-max-o mLaunchBounds:Landroid/graphics/Rect;

.field private blacklist mLaunchCookie:Landroid/os/IBinder;

.field private greylist-max-o mLaunchDisplayId:I

.field private blacklist mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

.field private blacklist mLaunchRootTask:Landroid/window/WindowContainerToken;

.field private blacklist mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

.field private blacklist mLaunchTaskFragmentToken:Landroid/os/IBinder;

.field private greylist-max-o mLaunchTaskId:I

.field private greylist-max-o mLaunchWindowingMode:I

.field private blacklist mLaunchedFromBubble:Z

.field private greylist-max-o mLockTaskMode:Z

.field private blacklist mOverrideTaskTransition:Z

.field private greylist-max-o mPackageName:Ljava/lang/String;

.field private blacklist mPendingIntentLaunchFlags:I

.field private greylist-max-o mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

.field private blacklist mRemoteTransition:Landroid/window/RemoteTransition;

.field private blacklist mRemoveWithTaskOrganizer:Z

.field private greylist-max-o mResultCode:I

.field private greylist-max-o mResultData:Landroid/content/Intent;

.field private greylist-max-o mRotationAnimationHint:I

.field private greylist-max-o mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

.field private greylist-max-o mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private blacklist mSplashScreenStyle:I

.field private blacklist mSplashScreenThemeResName:Ljava/lang/String;

.field private greylist-max-o mStartX:I

.field private greylist-max-o mStartY:I

.field private blacklist mTaskAlwaysOnTop:Z

.field private greylist-max-o mTaskOverlay:Z

.field private greylist-max-o mTaskOverlayCanResume:Z

.field private greylist-max-o mThumbnail:Landroid/graphics/Bitmap;

.field private blacklist mTransientLaunch:Z

.field private greylist-max-o mTransitionReceiver:Landroid/os/ResultReceiver;

.field private greylist-max-o mUsageTimeReport:Landroid/app/PendingIntent;

.field private greylist-max-o mWidth:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 2

    .line 1175
    invoke-direct {p0}, Landroid/app/ComponentOptions;-><init>()V

    .line 416
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 435
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 436
    iput v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 440
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 442
    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 444
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 446
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 456
    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 464
    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 479
    const-class v0, Landroid/app/IActivityOptionsExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityOptionsExt;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mActivityOptionsExt:Landroid/app/IActivityOptionsExt;

    .line 1176
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "opts"    # Landroid/os/Bundle;

    .line 1180
    invoke-direct {p0, p1}, Landroid/app/ComponentOptions;-><init>(Landroid/os/Bundle;)V

    .line 416
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 435
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 436
    iput v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 440
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 442
    iput v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 444
    iput v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 446
    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 456
    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 464
    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 479
    const-class v2, Landroid/app/IActivityOptionsExt;

    invoke-static {v2}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityOptionsExt;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mActivityOptionsExt:Landroid/app/IActivityOptionsExt;

    .line 1182
    const-string v2, "android:activity.packageName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1184
    :try_start_0
    const-string v2, "android:activity.usageTimeReport"

    const-class v3, Landroid/app/PendingIntent;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    goto :goto_0

    .line 1185
    :catch_0
    move-exception v2

    .line 1186
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "ActivityOptions"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1188
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    const-string v2, "android:activity.launchBounds"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1189
    const-string v2, "android:activity.animType"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1190
    const-string v3, "android:activity.animHeight"

    const-string v4, "android:activity.animWidth"

    const-string v5, "android:activity.animStartY"

    const-string v6, "android:activity.animStartX"

    const-string v7, "android:activity.animStartListener"

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 1200
    :pswitch_1
    const-string v2, "android:activity.animInPlaceRes"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 1201
    goto/16 :goto_1

    .line 1229
    :pswitch_2
    const-string v2, "android:activity.transitionCompleteListener"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1230
    const-string v2, "android:activity.transitionIsReturning"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1231
    const-string v2, "android:activity.sharedElementNames"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1232
    const-string v2, "android:activity.resultData"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 1233
    const-string v2, "android:activity.resultCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 1234
    const-string v2, "android:activity.exitCoordinatorIndex"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto :goto_1

    .line 1216
    :pswitch_3
    const-string v2, "android:activity.animThumbnail"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/hardware/HardwareBuffer;

    .line 1217
    .local v2, "buffer":Landroid/hardware/HardwareBuffer;
    if-eqz v2, :cond_0

    .line 1218
    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1220
    :cond_0
    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1221
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1222
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1223
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1224
    nop

    .line 1225
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1224
    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1226
    goto :goto_1

    .line 1205
    .end local v2    # "buffer":Landroid/hardware/HardwareBuffer;
    :pswitch_4
    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1206
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1207
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1208
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1209
    goto :goto_1

    .line 1192
    :pswitch_5
    const-string v2, "android:activity.animEnterRes"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 1193
    const-string v2, "android:activity.animExitRes"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 1194
    const-string v2, "android:activity.backgroundColor"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 1195
    nop

    .line 1196
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1195
    invoke-static {v2}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1197
    nop

    .line 1237
    :goto_1
    const-string v2, "android:activity.lockTaskMode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 1238
    const-string v2, "android.activity.launchDisplayId"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 1239
    const-string v2, "android.activity.callerDisplayId"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 1240
    const-string v2, "android.activity.launchTaskDisplayAreaToken"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    .line 1241
    const-string v2, "android.activity.launchRootTaskToken"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerToken;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 1242
    const-string v2, "android.activity.launchTaskFragmentToken"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    .line 1243
    const-string v2, "android.activity.windowingMode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 1244
    const-string v2, "android.activity.activityType"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 1245
    const-string v2, "android.activity.launchTaskId"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 1246
    const-string v2, "android.activity.pendingIntentLaunchFlags"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    .line 1247
    const-string v2, "android.activity.alwaysOnTop"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    .line 1248
    const-string v2, "android.activity.taskOverlay"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 1249
    const-string v2, "android.activity.taskOverlayCanResume"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    .line 1250
    const-string v2, "android.activity.avoidMoveToFront"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    .line 1251
    const-string v2, "android.activity.freezeRecentTasksReordering"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    .line 1252
    const-string v2, "android:activity.disallowEnterPictureInPictureWhileLaunching"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    .line 1254
    const-string v2, "android:activity.applyActivityFlagsForBubbles"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    .line 1256
    const-string v1, "android:activity.animSpecs"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1257
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 1258
    .local v1, "specs":[Landroid/os/Parcelable;
    array-length v2, v1

    new-array v2, v2, [Landroid/view/AppTransitionAnimationSpec;

    iput-object v2, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 1259
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_1

    .line 1260
    iget-object v3, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    aget-object v4, v1, v2

    check-cast v4, Landroid/view/AppTransitionAnimationSpec;

    aput-object v4, v3, v2

    .line 1259
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1263
    .end local v1    # "specs":[Landroid/os/Parcelable;
    .end local v2    # "i":I
    :cond_1
    const-string v1, "android:activity.animationFinishedListener"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1264
    nop

    .line 1265
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1264
    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 1267
    :cond_2
    const-string v1, "android.activity.sourceInfo"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityOptions$SourceInfo;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    .line 1268
    const-string v1, "android:activity.rotationAnimationHint"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 1269
    const-string v0, "android:instantapps.installerbundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 1270
    const-string v0, "android:activity.specsFuture"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1271
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1274
    :cond_3
    const-string v0, "android:activity.remoteAnimationAdapter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationAdapter;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1275
    const-string v0, "android.activity.launchCookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    .line 1276
    const-string v0, "android:activity.remoteTransition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/window/RemoteTransition;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1282
    iget-object v0, p0, Landroid/app/ActivityOptions;->mActivityOptionsExt:Landroid/app/IActivityOptionsExt;

    invoke-interface {v0, p1}, Landroid/app/IActivityOptionsExt;->setData(Landroid/os/Bundle;)V

    .line 1286
    const-string v0, "android:activity.overrideTaskTransition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    .line 1287
    const-string v0, "android.activity.splashScreenTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    .line 1288
    const-string v0, "android.activity.removeWithTaskOrganizer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    .line 1289
    const-string v0, "android.activity.launchTypeBubble"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    .line 1290
    const-string v0, "android.activity.transientLaunch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    .line 1291
    const-string v0, "android.activity.splashScreenStyle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 1292
    const-string v0, "android.activity.launchIntoPipParams"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureParams;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 1293
    nop

    .line 1294
    const-string v0, "android:activity.legacyPermissionPromptEligible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 1295
    const-string v0, "android.activity.dismissKeyguardIfInsecure"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    .line 1296
    const-string v0, "android.activity.ignorePendingIntentCreatorForegroundState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIgnorePendingIntentCreatorForegroundState:Z

    .line 1298
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public static greylist-max-o abort(Landroid/app/ActivityOptions;)V
    .locals 0
    .param p0, "options"    # Landroid/app/ActivityOptions;

    .line 1473
    if-eqz p0, :cond_0

    .line 1474
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->abort()V

    .line 1476
    :cond_0
    return-void
.end method

.method public static greylist-max-o fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "bOptions"    # Landroid/os/Bundle;

    .line 1468
    if-eqz p0, :cond_0

    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static greylist-max-o makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p8, "scaleUp"    # Z

    .line 886
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 887
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 888
    if-eqz p8, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    .line 889
    :cond_0
    const/16 v1, 0x9

    :goto_0
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 890
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 891
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 892
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 893
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 894
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 895
    iput p4, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 896
    iput p5, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 897
    invoke-direct {v0, p6, p7}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 898
    return-object v0
.end method

.method public static whitelist makeBasic()Landroid/app/ActivityOptions;
    .locals 1

    .line 1105
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1106
    .local v0, "opts":Landroid/app/ActivityOptions;
    return-object v0
.end method

.method public static whitelist makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 753
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 754
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/16 v1, 0xb

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 755
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 756
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 757
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 758
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 759
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 760
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 761
    return-object v0
.end method

.method public static whitelist makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I

    .line 499
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist makeCustomAnimation(Landroid/content/Context;III)Landroid/app/ActivityOptions;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I

    .line 519
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static greylist makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 545
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 546
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 547
    const/4 v1, 0x1

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 548
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 549
    iput p2, v0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 550
    iput p3, v0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 551
    invoke-direct {v0, p4, p5}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 552
    return-object v0
.end method

.method public static blacklist makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "startedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p6, "finishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 581
    invoke-static/range {p0 .. p5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 583
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-direct {v0, p4, p6}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    .line 584
    return-object v0
.end method

.method public static greylist-max-o makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "animId"    # I

    .line 634
    if-eqz p1, :cond_0

    .line 638
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 639
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 640
    const/16 v1, 0xa

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 641
    iput p1, v0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 642
    return-object v0

    .line 635
    .end local v0    # "opts":Landroid/app/ActivityOptions;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must specify a valid animation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "startedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p5, "finishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 615
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 617
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    .line 618
    return-object v0
.end method

.method public static whitelist makeLaunchIntoPip(Landroid/app/PictureInPictureParams;)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "pictureInPictureParams"    # Landroid/app/PictureInPictureParams;

    .line 1161
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1162
    .local v0, "opts":Landroid/app/ActivityOptions;
    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1, p0}, Landroid/app/PictureInPictureParams$Builder;-><init>(Landroid/app/PictureInPictureParams;)V

    .line 1163
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/PictureInPictureParams$Builder;->setIsLaunchIntoPip(Z)Landroid/app/PictureInPictureParams$Builder;

    move-result-object v1

    .line 1164
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 1165
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1166
    return-object v0
.end method

.method public static greylist makeMultiThumbFutureAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p3, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p4, "scaleUp"    # Z

    .line 847
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 848
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 849
    if-eqz p4, :cond_0

    .line 850
    const/16 v1, 0x8

    goto :goto_0

    .line 851
    :cond_0
    const/16 v1, 0x9

    :goto_0
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 852
    iput-object p2, v0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 853
    invoke-direct {v0, p1, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 854
    return-object v0
.end method

.method public static greylist-max-o makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;
    .locals 2

    .line 772
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 773
    .local v0, "options":Landroid/app/ActivityOptions;
    const/16 v1, 0xc

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 774
    return-object v0
.end method

.method public static greylist makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 1118
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1119
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1120
    const/16 v1, 0xd

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1121
    return-object v0
.end method

.method public static blacklist makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p1, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1132
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1133
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1134
    const/16 v1, 0xd

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1135
    iput-object p1, v0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1136
    return-object v0
.end method

.method public static blacklist makeRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 1146
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1147
    .local v0, "opts":Landroid/app/ActivityOptions;
    iput-object p0, v0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 1148
    return-object v0
.end method

.method public static whitelist makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 725
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 726
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 727
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 728
    new-array v1, v1, [I

    .line 729
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 730
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p1

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 731
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 732
    iput p3, v0, Landroid/app/ActivityOptions;->mWidth:I

    .line 733
    iput p4, v0, Landroid/app/ActivityOptions;->mHeight:I

    .line 734
    return-object v0
.end method

.method static greylist-max-o makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "exitCoordinator"    # Landroid/app/ExitTransitionCoordinator;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/app/ExitTransitionCoordinator;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/Intent;",
            ")",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .line 1068
    .local p2, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1069
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x5

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1070
    iput-object p2, v0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1071
    iput-object p1, v0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1072
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1073
    iput p3, v0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 1074
    iput-object p4, v0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 1075
    if-nez p0, :cond_0

    .line 1076
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto :goto_0

    .line 1078
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 1079
    invoke-virtual {v1, p1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v1

    iput v1, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 1081
    :goto_0
    return-object v0
.end method

.method public static whitelist makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .line 936
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Pair;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ActivityOptions;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 961
    .local p1, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 962
    .local v0, "opts":Landroid/app/ActivityOptions;
    new-instance v1, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;

    invoke-direct {v1, p0}, Landroid/app/ExitTransitionCoordinator$ActivityExitTransitionCallbacks;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 964
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 962
    invoke-static {v1, v2, v3, v0, p1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v1

    .line 965
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    iget-object v2, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 966
    invoke-virtual {v2, v1}, Landroid/app/ActivityTransitionState;->addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I

    move-result v2

    iput v2, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 967
    return-object v0
.end method

.method static blacklist makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;
    .locals 11
    .param p0, "exitCallbacks"    # Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;
    .param p1, "callback"    # Landroid/app/SharedElementCallback;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "opts"    # Landroid/app/ActivityOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;",
            "Landroid/app/SharedElementCallback;",
            "Landroid/view/Window;",
            "Landroid/app/ActivityOptions;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/ExitTransitionCoordinator;"
        }
    .end annotation

    .line 1020
    .local p4, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1021
    const/4 v0, 0x6

    iput v0, p3, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1022
    const/4 v0, 0x0

    return-object v0

    .line 1024
    :cond_0
    const/4 v0, 0x5

    iput v0, p3, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1026
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 1029
    .local v9, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p4, :cond_3

    .line 1030
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_3

    .line 1031
    aget-object v2, p4, v1

    .line 1032
    .local v2, "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1033
    .local v3, "sharedElementName":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1036
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    .line 1038
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 1041
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    .end local v2    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v3    # "sharedElementName":Ljava/lang/String;
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1039
    .restart local v2    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .restart local v3    # "sharedElementName":Ljava/lang/String;
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Shared element must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1034
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Shared element name must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1045
    .end local v1    # "i":I
    .end local v2    # "sharedElement":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    .end local v3    # "sharedElementName":Ljava/lang/String;
    :cond_3
    new-instance v10, Landroid/app/ExitTransitionCoordinator;

    const/4 v8, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, v0

    move-object v6, v0

    move-object v7, v9

    invoke-direct/range {v1 .. v8}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 1047
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    iput-object v1, p3, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1048
    iput-object v0, p3, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1049
    const/4 v2, 0x0

    iput-boolean v2, p3, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1050
    return-object v1
.end method

.method public static whitelist makeTaskLaunchBehind()Landroid/app/ActivityOptions;
    .locals 2

    .line 1095
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 1096
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x7

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1097
    return-object v0
.end method

.method private static greylist-max-o makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;
    .locals 3
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p5, "scaleUp"    # Z

    .line 826
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 827
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 828
    if-eqz p5, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 829
    iput-object p1, v0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 830
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 831
    .local v1, "pts":[I
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 832
    const/4 v2, 0x0

    aget v2, v1, v2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/app/ActivityOptions;->mStartX:I

    .line 833
    const/4 v2, 0x1

    aget v2, v1, v2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/app/ActivityOptions;->mStartY:I

    .line 834
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 835
    return-object v0
.end method

.method public static greylist-max-o makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 9
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 879
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Landroid/app/ActivityOptions;->makeAspectScaledThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;
    .locals 2
    .param p0, "source"    # Landroid/view/View;
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "onAnimationStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p4, "onAnimationFinishedListener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 906
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 907
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 908
    const/16 v1, 0x9

    iput v1, v0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 909
    iput-object p1, v0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 910
    invoke-direct {v0, p2, p3}, Landroid/app/ActivityOptions;->setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 911
    invoke-direct {v0, p2, p4}, Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    .line 912
    return-object v0
.end method

.method public static whitelist makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;
    .locals 1
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I

    .line 798
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;
    .locals 6
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 820
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeThumbnailAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;Z)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist setExitTransitionTimeout(J)V
    .locals 0
    .param p0, "timeoutMillis"    # J

    .line 1061
    sput-wide p0, Landroid/app/ExitTransitionCoordinator;->sMaxWaitMillis:J

    .line 1062
    return-void
.end method

.method private greylist-max-o setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    .line 676
    if-eqz p2, :cond_0

    .line 677
    new-instance v0, Landroid/app/ActivityOptions$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$2;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 690
    :cond_0
    return-void
.end method

.method private greylist-max-o setOnAnimationStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .line 647
    if-eqz p2, :cond_0

    .line 648
    new-instance v0, Landroid/app/ActivityOptions$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ActivityOptions$1;-><init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 660
    :cond_0
    return-void
.end method

.method public static varargs blacklist startSharedElementAnimation(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;[Landroid/util/Pair;)Landroid/util/Pair;
    .locals 3
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "exitCallbacks"    # Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;
    .param p2, "callback"    # Landroid/app/SharedElementCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;",
            "Landroid/app/SharedElementCallback;",
            "[",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/app/ActivityOptions;",
            "Landroid/app/ExitTransitionCoordinator;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 985
    .local p3, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 986
    .local v0, "opts":Landroid/app/ActivityOptions;
    invoke-static {p1, p2, p0, v0, p3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;Landroid/app/SharedElementCallback;Landroid/view/Window;Landroid/app/ActivityOptions;[Landroid/util/Pair;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v1

    .line 988
    .local v1, "exit":Landroid/app/ExitTransitionCoordinator;
    const/4 v2, -0x1

    iput v2, v0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 989
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o stopSharedElementAnimation(Landroid/view/Window;)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;

    .line 1001
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1002
    .local v0, "decorView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1003
    return-void

    .line 1005
    :cond_0
    nop

    .line 1006
    const v1, 0x1020283

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ExitTransitionCoordinator;

    .line 1007
    .local v2, "exit":Landroid/app/ExitTransitionCoordinator;
    if-eqz v2, :cond_1

    .line 1008
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->cancelPendingTransitions()Z

    .line 1009
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1010
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1011
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    .line 1012
    invoke-virtual {v2}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    .line 1013
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1015
    :cond_1
    return-void
.end method


# virtual methods
.method public greylist-max-o abort()V
    .locals 2

    .line 1401
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    .line 1403
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1405
    goto :goto_0

    .line 1404
    :catch_0
    move-exception v0

    .line 1407
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o canTaskOverlayResume()Z
    .locals 1

    .line 1746
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    return v0
.end method

.method public greylist-max-o disallowEnterPictureInPictureWhileLaunching()Z
    .locals 1

    .line 1799
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    return v0
.end method

.method public greylist-max-o forTargetActivity()Landroid/app/ActivityOptions;
    .locals 2

    .line 2266
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2267
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0}, Landroid/app/ActivityOptions;-><init>()V

    .line 2268
    .local v0, "result":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 2269
    return-object v0

    .line 2272
    .end local v0    # "result":Landroid/app/ActivityOptions;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist freezeRecentTasksReordering()Z
    .locals 1

    .line 1783
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    return v0
.end method

.method public greylist-max-o getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;
    .locals 1

    .line 1444
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    return-object v0
.end method

.method public greylist-max-o getAnimationFinishedListener()Landroid/os/IRemoteCallback;
    .locals 1

    .line 1393
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public blacklist getAnimationStartedListener()Landroid/os/IRemoteCallback;
    .locals 1

    .line 1388
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    return-object v0
.end method

.method public greylist-max-o getAnimationType()I
    .locals 1

    .line 1333
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    return v0
.end method

.method public greylist-max-o getAvoidMoveToFront()Z
    .locals 1

    .line 1765
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    return v0
.end method

.method public blacklist getCallerDisplayId()I
    .locals 1

    .line 1588
    iget v0, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    return v0
.end method

.method public blacklist getCustomBackgroundColor()I
    .locals 1

    .line 1353
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    return v0
.end method

.method public greylist-max-o getCustomEnterResId()I
    .locals 1

    .line 1338
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    return v0
.end method

.method public greylist-max-o getCustomExitResId()I
    .locals 1

    .line 1343
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    return v0
.end method

.method public greylist-max-o getCustomInPlaceResId()I
    .locals 1

    .line 1348
    iget v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    return v0
.end method

.method public blacklist getDismissKeyguardIfInsecure()Z
    .locals 1

    .line 1911
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    return v0
.end method

.method public greylist-max-o getExitCoordinatorKey()I
    .locals 1

    .line 1397
    iget v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    return v0
.end method

.method public greylist-max-o getHeight()I
    .locals 1

    .line 1383
    iget v0, p0, Landroid/app/ActivityOptions;->mHeight:I

    return v0
.end method

.method public blacklist getIgnorePendingIntentCreatorForegroundState()Z
    .locals 1

    .line 1928
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIgnorePendingIntentCreatorForegroundState:Z

    return v0
.end method

.method public greylist-max-o getLaunchActivityType()I
    .locals 1

    .line 1664
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    return v0
.end method

.method public whitelist getLaunchBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1328
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getLaunchCookie()Landroid/os/IBinder;
    .locals 1

    .line 1829
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getLaunchDisplayId()I
    .locals 1

    .line 1567
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    return v0
.end method

.method public blacklist getLaunchIntoPipParams()Landroid/app/PictureInPictureParams;
    .locals 1

    .line 1650
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    return-object v0
.end method

.method public blacklist getLaunchRootTask()Landroid/window/WindowContainerToken;
    .locals 1

    .line 1611
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public greylist-max-o getLaunchTaskBehind()Z
    .locals 2

    .line 1171
    iget v0, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;
    .locals 1

    .line 1599
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public blacklist getLaunchTaskFragmentToken()Landroid/os/IBinder;
    .locals 1

    .line 1622
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getLaunchTaskId()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1688
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    return v0
.end method

.method public greylist-max-o getLaunchWindowingMode()I
    .locals 1

    .line 1633
    iget v0, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    return v0
.end method

.method public blacklist getLaunchedFromBubble()Z
    .locals 1

    .line 1868
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    return v0
.end method

.method public blacklist getLaunchedFromMultiSearch()Z
    .locals 1

    .line 2405
    iget-object v0, p0, Landroid/app/ActivityOptions;->mActivityOptionsExt:Landroid/app/IActivityOptionsExt;

    invoke-interface {v0}, Landroid/app/IActivityOptionsExt;->getLaunchedFromMultiSearch()Z

    move-result v0

    return v0
.end method

.method public whitelist getLockTaskMode()Z
    .locals 1

    .line 1485
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    return v0
.end method

.method public blacklist getOverrideTaskTransition()Z
    .locals 1

    .line 1835
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    return v0
.end method

.method public greylist-max-o getPackageName()Ljava/lang/String;
    .locals 1

    .line 1318
    iget-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPendingIntentLaunchFlags()I
    .locals 1

    .line 1704
    iget v0, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    return v0
.end method

.method public greylist-max-o getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;
    .locals 1

    .line 1453
    iget-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    return-object v0
.end method

.method public blacklist getRemoteTransition()Landroid/window/RemoteTransition;
    .locals 1

    .line 1463
    iget-object v0, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public blacklist getRemoveWithTaskOranizer()Z
    .locals 1

    .line 1851
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    return v0
.end method

.method public greylist-max-o getResultCode()I
    .locals 1

    .line 1433
    iget v0, p0, Landroid/app/ActivityOptions;->mResultCode:I

    return v0
.end method

.method public greylist-max-o getResultData()Landroid/content/Intent;
    .locals 1

    .line 1436
    iget-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    return-object v0
.end method

.method public greylist-max-o getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    .line 1430
    iget-object v0, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public greylist-max-o getRotationAnimationHint()I
    .locals 1

    .line 2281
    iget v0, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    return v0
.end method

.method public greylist-max-o getSharedElementNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;
    .locals 1

    .line 2244
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    return-object v0
.end method

.method public greylist-max-o getSpecsFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;
    .locals 1

    .line 1448
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    return-object v0
.end method

.method public whitelist getSplashScreenStyle()I
    .locals 1

    .line 1502
    iget v0, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    return v0
.end method

.method public blacklist getSplashScreenThemeResName()Ljava/lang/String;
    .locals 1

    .line 1494
    iget-object v0, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getStartX()I
    .locals 1

    .line 1368
    iget v0, p0, Landroid/app/ActivityOptions;->mStartX:I

    return v0
.end method

.method public greylist-max-o getStartY()I
    .locals 1

    .line 1373
    iget v0, p0, Landroid/app/ActivityOptions;->mStartY:I

    return v0
.end method

.method public blacklist getTaskAlwaysOnTop()Z
    .locals 1

    .line 1720
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    return v0
.end method

.method public greylist-max-o getTaskOverlay()Z
    .locals 1

    .line 1739
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    return v0
.end method

.method public blacklist getThumbnail()Landroid/hardware/HardwareBuffer;
    .locals 1

    .line 1363
    iget-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getTransientLaunch()Z
    .locals 1

    .line 1890
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    return v0
.end method

.method public greylist-max-o getUsageTimeReport()Landroid/app/PendingIntent;
    .locals 1

    .line 1440
    iget-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public greylist-max-o getWidth()I
    .locals 1

    .line 1378
    iget v0, p0, Landroid/app/ActivityOptions;->mWidth:I

    return v0
.end method

.method public blacklist isApplyActivityFlagsForBubbles()Z
    .locals 1

    .line 1809
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    return v0
.end method

.method greylist-max-o isCrossTask()Z
    .locals 1

    .line 1421
    iget v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isEligibleForLegacyPermissionPrompt()Z
    .locals 1

    .line 1526
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    return v0
.end method

.method public blacklist isLaunchIntoPip()Z
    .locals 1

    .line 1658
    iget-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_0

    .line 1659
    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1658
    :goto_0
    return v0
.end method

.method public greylist-max-o isReturning()Z
    .locals 1

    .line 1411
    iget-boolean v0, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    return v0
.end method

.method public greylist-max-o popAppVerificationBundle()Landroid/os/Bundle;
    .locals 2

    .line 2303
    iget-object v0, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2304
    .local v0, "out":Landroid/os/Bundle;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2305
    return-object v0
.end method

.method public whitelist requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .line 2236
    iput-object p1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 2237
    return-void
.end method

.method public whitelist setAppVerificationBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2315
    iput-object p1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    .line 2316
    return-object p0
.end method

.method public blacklist setApplyActivityFlagsForBubbles(Z)V
    .locals 0
    .param p1, "apply"    # Z

    .line 1804
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    .line 1805
    return-void
.end method

.method public greylist-max-o setAvoidMoveToFront()V
    .locals 1

    .line 1756
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    .line 1757
    return-void
.end method

.method public blacklist setCallerDisplayId(I)Landroid/app/ActivityOptions;
    .locals 0
    .param p1, "callerDisplayId"    # I

    .line 1593
    iput p1, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    .line 1594
    return-object p0
.end method

.method public greylist-max-o setDisallowEnterPictureInPictureWhileLaunching(Z)V
    .locals 0
    .param p1, "disallow"    # Z

    .line 1794
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    .line 1795
    return-void
.end method

.method public blacklist setDismissKeyguardIfInsecure()V
    .locals 1

    .line 1902
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    .line 1903
    return-void
.end method

.method public blacklist setEligibleForLegacyPermissionPrompt(Z)V
    .locals 0
    .param p1, "eligible"    # Z

    .line 1535
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 1536
    return-void
.end method

.method public blacklist setFreezeRecentTasksReordering()V
    .locals 1

    .line 1775
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    .line 1776
    return-void
.end method

.method public blacklist setIgnorePendingIntentCreatorForegroundState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 1919
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mIgnorePendingIntentCreatorForegroundState:Z

    .line 1920
    return-void
.end method

.method public blacklist setLaunchActivityType(I)V
    .locals 0
    .param p1, "activityType"    # I

    .line 1670
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    .line 1671
    return-void
.end method

.method public whitelist setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 1
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;

    .line 1312
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    .line 1313
    return-object p0
.end method

.method public blacklist setLaunchCookie(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "launchCookie"    # Landroid/os/IBinder;

    .line 1820
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    .line 1821
    return-void
.end method

.method public whitelist setLaunchDisplayId(I)Landroid/app/ActivityOptions;
    .locals 0
    .param p1, "launchDisplayId"    # I

    .line 1582
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    .line 1583
    return-object p0
.end method

.method public blacklist setLaunchRootTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;
    .locals 0
    .param p1, "windowContainerToken"    # Landroid/window/WindowContainerToken;

    .line 1616
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 1617
    return-object p0
.end method

.method public blacklist setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;
    .locals 0
    .param p1, "windowContainerToken"    # Landroid/window/WindowContainerToken;

    .line 1605
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    .line 1606
    return-object p0
.end method

.method public blacklist setLaunchTaskFragmentToken(Landroid/os/IBinder;)Landroid/app/ActivityOptions;
    .locals 0
    .param p1, "taskFragmentToken"    # Landroid/os/IBinder;

    .line 1627
    iput-object p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    .line 1628
    return-object p0
.end method

.method public whitelist setLaunchTaskId(I)V
    .locals 0
    .param p1, "taskId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1680
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    .line 1681
    return-void
.end method

.method public blacklist setLaunchWindowingMode(I)V
    .locals 0
    .param p1, "windowingMode"    # I

    .line 1642
    iput p1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    .line 1643
    return-void
.end method

.method public blacklist setLaunchedFromBubble(Z)V
    .locals 0
    .param p1, "fromBubble"    # Z

    .line 1860
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    .line 1861
    return-void
.end method

.method public blacklist setLaunchedFromMultiSearch(Z)V
    .locals 1
    .param p1, "fromMultiSearch"    # Z

    .line 2398
    iget-object v0, p0, Landroid/app/ActivityOptions;->mActivityOptionsExt:Landroid/app/IActivityOptionsExt;

    invoke-interface {v0, p1}, Landroid/app/IActivityOptionsExt;->setLaunchedFromMultiSearch(Z)V

    .line 2399
    return-void
.end method

.method public whitelist setLockTaskEnabled(Z)Landroid/app/ActivityOptions;
    .locals 0
    .param p1, "lockTaskMode"    # Z

    .line 1556
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 1557
    return-object p0
.end method

.method public blacklist setMultiTaskMode(Z)V
    .locals 0
    .param p1, "multiTaskMode"    # Z

    .line 2391
    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setLaunchedFromMultiSearch(Z)V

    .line 2392
    return-void
.end method

.method public blacklist setPendingIntentLaunchFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 1697
    iput p1, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    .line 1698
    return-void
.end method

.method public greylist-max-o setRemoteAnimationAdapter(Landroid/view/RemoteAnimationAdapter;)V
    .locals 0
    .param p1, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 1458
    iput-object p1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 1459
    return-void
.end method

.method public blacklist setRemoveWithTaskOrganizer(Z)V
    .locals 0
    .param p1, "remove"    # Z

    .line 1843
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    .line 1844
    return-void
.end method

.method public greylist-max-o setRotationAnimationHint(I)V
    .locals 0
    .param p1, "hint"    # I

    .line 2293
    iput p1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    .line 2294
    return-void
.end method

.method public blacklist setSourceInfo(IJ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "uptimeMillis"    # J

    .line 2258
    new-instance v0, Landroid/app/ActivityOptions$SourceInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ActivityOptions$SourceInfo;-><init>(IJ)V

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    .line 2259
    return-void
.end method

.method public whitelist setSplashScreenStyle(I)Landroid/app/ActivityOptions;
    .locals 1
    .param p1, "style"    # I

    .line 1513
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 1515
    :cond_0
    iput p1, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    .line 1517
    :cond_1
    return-object p0
.end method

.method public greylist setSplitScreenCreateMode(I)V
    .locals 0
    .param p1, "splitScreenCreateMode"    # I

    .line 1790
    return-void
.end method

.method public blacklist setTaskAlwaysOnTop(Z)V
    .locals 0
    .param p1, "alwaysOnTop"    # Z

    .line 1713
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    .line 1714
    return-void
.end method

.method public blacklist setTaskOverlay(ZZ)V
    .locals 0
    .param p1, "taskOverlay"    # Z
    .param p2, "canResume"    # Z

    .line 1731
    iput-boolean p1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    .line 1732
    iput-boolean p2, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    .line 1733
    return-void
.end method

.method public blacklist setTransientLaunch()Landroid/app/ActivityOptions;
    .locals 1

    .line 1880
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    .line 1881
    return-object p0
.end method

.method public whitelist toBundle()Landroid/os/Bundle;
    .locals 11

    .line 2025
    invoke-super {p0}, Landroid/app/ComponentOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 2026
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2027
    const-string v2, "android:activity.packageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 2030
    const-string v2, "android:activity.launchBounds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2032
    :cond_1
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 2033
    const-string v3, "android:activity.animType"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2035
    :cond_2
    iget-object v1, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    if-eqz v1, :cond_3

    .line 2036
    const-string v3, "android:activity.usageTimeReport"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2038
    :cond_3
    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    const/4 v3, 0x0

    const-string v4, "android:activity.animHeight"

    const-string v5, "android:activity.animWidth"

    const-string v6, "android:activity.animStartY"

    const-string v7, "android:activity.animStartX"

    const-string v8, "android:activity.animStartListener"

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 2047
    :pswitch_1
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    const-string v3, "android:activity.animInPlaceRes"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2048
    goto/16 :goto_1

    .line 2078
    :pswitch_2
    iget-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_4

    .line 2079
    const-string v3, "android:activity.transitionCompleteListener"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2081
    :cond_4
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    const-string v3, "android:activity.transitionIsReturning"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2082
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    const-string v3, "android:activity.sharedElementNames"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2083
    iget-object v1, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    const-string v3, "android:activity.resultData"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2084
    iget v1, p0, Landroid/app/ActivityOptions;->mResultCode:I

    const-string v3, "android:activity.resultCode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2085
    iget v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    const-string v3, "android:activity.exitCoordinatorIndex"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2062
    :pswitch_3
    iget-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 2063
    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2064
    .local v1, "hwBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_5

    .line 2065
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v9

    const-string v10, "android:activity.animThumbnail"

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 2067
    :cond_5
    const-string v9, "ActivityOptions"

    const-string v10, "Failed to copy thumbnail"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    .end local v1    # "hwBitmap":Landroid/graphics/Bitmap;
    :cond_6
    :goto_0
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2071
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2072
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2073
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2074
    nop

    .line 2075
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2074
    :cond_7
    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2076
    goto :goto_1

    .line 2051
    :pswitch_4
    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2052
    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2053
    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2054
    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2055
    goto :goto_1

    .line 2040
    :pswitch_5
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    const-string v4, "android:activity.animEnterRes"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2041
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    const-string v4, "android:activity.animExitRes"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2042
    iget v1, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    const-string v4, "android:activity.backgroundColor"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2043
    nop

    .line 2044
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2043
    :cond_8
    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2045
    nop

    .line 2088
    :goto_1
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    if-eqz v1, :cond_9

    .line 2089
    const-string v3, "android:activity.lockTaskMode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2091
    :cond_9
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchDisplayId:I

    if-eq v1, v2, :cond_a

    .line 2092
    const-string v3, "android.activity.launchDisplayId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2094
    :cond_a
    iget v1, p0, Landroid/app/ActivityOptions;->mCallerDisplayId:I

    if-eq v1, v2, :cond_b

    .line 2095
    const-string v3, "android.activity.callerDisplayId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2097
    :cond_b
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskDisplayArea:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_c

    .line 2098
    const-string v3, "android.activity.launchTaskDisplayAreaToken"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2100
    :cond_c
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_d

    .line 2101
    const-string v3, "android.activity.launchRootTaskToken"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2103
    :cond_d
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskFragmentToken:Landroid/os/IBinder;

    if-eqz v1, :cond_e

    .line 2104
    const-string v3, "android.activity.launchTaskFragmentToken"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2106
    :cond_e
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchWindowingMode:I

    if-eqz v1, :cond_f

    .line 2107
    const-string v3, "android.activity.windowingMode"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2109
    :cond_f
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchActivityType:I

    if-eqz v1, :cond_10

    .line 2110
    const-string v3, "android.activity.activityType"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2112
    :cond_10
    iget v1, p0, Landroid/app/ActivityOptions;->mLaunchTaskId:I

    if-eq v1, v2, :cond_11

    .line 2113
    const-string v3, "android.activity.launchTaskId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2115
    :cond_11
    iget v1, p0, Landroid/app/ActivityOptions;->mPendingIntentLaunchFlags:I

    if-eqz v1, :cond_12

    .line 2116
    const-string v3, "android.activity.pendingIntentLaunchFlags"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2118
    :cond_12
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskAlwaysOnTop:Z

    if-eqz v1, :cond_13

    .line 2119
    const-string v3, "android.activity.alwaysOnTop"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2121
    :cond_13
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskOverlay:Z

    if-eqz v1, :cond_14

    .line 2122
    const-string v3, "android.activity.taskOverlay"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2124
    :cond_14
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTaskOverlayCanResume:Z

    if-eqz v1, :cond_15

    .line 2125
    const-string v3, "android.activity.taskOverlayCanResume"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2127
    :cond_15
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mAvoidMoveToFront:Z

    if-eqz v1, :cond_16

    .line 2128
    const-string v3, "android.activity.avoidMoveToFront"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2130
    :cond_16
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mFreezeRecentTasksReordering:Z

    if-eqz v1, :cond_17

    .line 2131
    const-string v3, "android.activity.freezeRecentTasksReordering"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2133
    :cond_17
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDisallowEnterPictureInPictureWhileLaunching:Z

    if-eqz v1, :cond_18

    .line 2134
    const-string v3, "android:activity.disallowEnterPictureInPictureWhileLaunching"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2137
    :cond_18
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mApplyActivityFlagsForBubbles:Z

    if-eqz v1, :cond_19

    .line 2138
    const-string v3, "android:activity.applyActivityFlagsForBubbles"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2140
    :cond_19
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    if-eqz v1, :cond_1a

    .line 2141
    const-string v3, "android:activity.animSpecs"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2143
    :cond_1a
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_1b

    .line 2144
    invoke-interface {v1}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "android:activity.animationFinishedListener"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2146
    :cond_1b
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v1, :cond_1c

    .line 2147
    invoke-interface {v1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "android:activity.specsFuture"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2149
    :cond_1c
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSourceInfo:Landroid/app/ActivityOptions$SourceInfo;

    if-eqz v1, :cond_1d

    .line 2150
    const-string v3, "android.activity.sourceInfo"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2152
    :cond_1d
    iget v1, p0, Landroid/app/ActivityOptions;->mRotationAnimationHint:I

    if-eq v1, v2, :cond_1e

    .line 2153
    const-string v2, "android:activity.rotationAnimationHint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2155
    :cond_1e
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAppVerificationBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1f

    .line 2156
    const-string v2, "android:instantapps.installerbundle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2158
    :cond_1f
    iget-object v1, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    if-eqz v1, :cond_20

    .line 2159
    const-string v2, "android:activity.remoteAnimationAdapter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2161
    :cond_20
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v1, :cond_21

    .line 2162
    const-string v2, "android.activity.launchCookie"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2164
    :cond_21
    iget-object v1, p0, Landroid/app/ActivityOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v1, :cond_22

    .line 2165
    const-string v2, "android:activity.remoteTransition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2172
    :cond_22
    iget-object v1, p0, Landroid/app/ActivityOptions;->mActivityOptionsExt:Landroid/app/IActivityOptionsExt;

    invoke-interface {v1, v0}, Landroid/app/IActivityOptionsExt;->getData(Landroid/os/Bundle;)V

    .line 2176
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mOverrideTaskTransition:Z

    if-eqz v1, :cond_23

    .line 2177
    const-string v2, "android:activity.overrideTaskTransition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2179
    :cond_23
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 2180
    iget-object v1, p0, Landroid/app/ActivityOptions;->mSplashScreenThemeResName:Ljava/lang/String;

    const-string v2, "android.activity.splashScreenTheme"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    :cond_24
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mRemoveWithTaskOrganizer:Z

    if-eqz v1, :cond_25

    .line 2183
    const-string v2, "android.activity.removeWithTaskOrganizer"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2185
    :cond_25
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mLaunchedFromBubble:Z

    if-eqz v1, :cond_26

    .line 2186
    const-string v2, "android.activity.launchTypeBubble"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2188
    :cond_26
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mTransientLaunch:Z

    if-eqz v1, :cond_27

    .line 2189
    const-string v2, "android.activity.transientLaunch"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2191
    :cond_27
    iget v1, p0, Landroid/app/ActivityOptions;->mSplashScreenStyle:I

    if-eqz v1, :cond_28

    .line 2192
    const-string v2, "android.activity.splashScreenStyle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2194
    :cond_28
    iget-object v1, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    if-eqz v1, :cond_29

    .line 2195
    const-string v2, "android.activity.launchIntoPipParams"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2197
    :cond_29
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    if-eqz v1, :cond_2a

    .line 2198
    const-string v2, "android:activity.legacyPermissionPromptEligible"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2201
    :cond_2a
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mDismissKeyguardIfInsecure:Z

    if-eqz v1, :cond_2b

    .line 2202
    const-string v2, "android.activity.dismissKeyguardIfInsecure"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2204
    :cond_2b
    iget-boolean v1, p0, Landroid/app/ActivityOptions;->mIgnorePendingIntentCreatorForegroundState:Z

    if-eqz v1, :cond_2c

    .line 2205
    const-string v2, "android.activity.ignorePendingIntentCreatorForegroundState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2208
    :cond_2c
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 2323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityOptions("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAnimationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist update(Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "otherOptions"    # Landroid/app/ActivityOptions;

    .line 1937
    iget-object v0, p1, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1938
    iput-object v0, p0, Landroid/app/ActivityOptions;->mPackageName:Ljava/lang/String;

    .line 1940
    :cond_0
    iget-object v0, p1, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mUsageTimeReport:Landroid/app/PendingIntent;

    .line 1941
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1942
    iput-object v0, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1943
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1944
    iput-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 1945
    iput v1, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 1946
    iput v1, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    .line 1947
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    iput v1, p0, Landroid/app/ActivityOptions;->mAnimationType:I

    .line 1948
    iget v1, p1, Landroid/app/ActivityOptions;->mAnimationType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 1963
    :pswitch_1
    iget v0, p1, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    iput v0, p0, Landroid/app/ActivityOptions;->mCustomInPlaceResId:I

    .line 1964
    goto/16 :goto_3

    .line 1996
    :pswitch_2
    iget-object v1, p1, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mTransitionReceiver:Landroid/os/ResultReceiver;

    .line 1997
    iget-object v1, p1, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mSharedElementNames:Ljava/util/ArrayList;

    .line 1998
    iget-boolean v1, p1, Landroid/app/ActivityOptions;->mIsReturning:Z

    iput-boolean v1, p0, Landroid/app/ActivityOptions;->mIsReturning:Z

    .line 1999
    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 2000
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 2001
    iget-object v0, p1, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mResultData:Landroid/content/Intent;

    .line 2002
    iget v0, p1, Landroid/app/ActivityOptions;->mResultCode:I

    iput v0, p0, Landroid/app/ActivityOptions;->mResultCode:I

    .line 2003
    iget v0, p1, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    iput v0, p0, Landroid/app/ActivityOptions;->mExitCoordinatorIndex:I

    goto :goto_3

    .line 1982
    :pswitch_3
    iget-object v1, p1, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1983
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1984
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1985
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1986
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1987
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_1

    .line 1989
    :try_start_0
    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1991
    goto :goto_0

    .line 1990
    :catch_0
    move-exception v0

    .line 1993
    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1994
    goto :goto_3

    .line 1966
    :pswitch_4
    iget v1, p1, Landroid/app/ActivityOptions;->mStartX:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartX:I

    .line 1967
    iget v1, p1, Landroid/app/ActivityOptions;->mStartY:I

    iput v1, p0, Landroid/app/ActivityOptions;->mStartY:I

    .line 1968
    iget v1, p1, Landroid/app/ActivityOptions;->mWidth:I

    iput v1, p0, Landroid/app/ActivityOptions;->mWidth:I

    .line 1969
    iget v1, p1, Landroid/app/ActivityOptions;->mHeight:I

    iput v1, p0, Landroid/app/ActivityOptions;->mHeight:I

    .line 1970
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_2

    .line 1972
    :try_start_1
    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1974
    goto :goto_1

    .line 1973
    :catch_1
    move-exception v1

    .line 1976
    :cond_2
    :goto_1
    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1977
    goto :goto_3

    .line 1950
    :pswitch_5
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomEnterResId:I

    .line 1951
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomExitResId:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomExitResId:I

    .line 1952
    iget v1, p1, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    iput v1, p0, Landroid/app/ActivityOptions;->mCustomBackgroundColor:I

    .line 1953
    iput-object v0, p0, Landroid/app/ActivityOptions;->mThumbnail:Landroid/graphics/Bitmap;

    .line 1954
    iget-object v1, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_3

    .line 1956
    :try_start_2
    invoke-interface {v1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1958
    goto :goto_2

    .line 1957
    :catch_2
    move-exception v0

    .line 1960
    :cond_3
    :goto_2
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationStartedListener:Landroid/os/IRemoteCallback;

    .line 1961
    nop

    .line 2006
    :goto_3
    iget-boolean v0, p1, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mLockTaskMode:Z

    .line 2007
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimSpecs:[Landroid/view/AppTransitionAnimationSpec;

    .line 2008
    iget-object v0, p1, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mAnimationFinishedListener:Landroid/os/IRemoteCallback;

    .line 2009
    iget-object v0, p1, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2010
    iget-object v0, p1, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 2011
    iget-object v0, p1, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    iput-object v0, p0, Landroid/app/ActivityOptions;->mLaunchIntoPipParams:Landroid/app/PictureInPictureParams;

    .line 2012
    iget-boolean v0, p1, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    iput-boolean v0, p0, Landroid/app/ActivityOptions;->mIsEligibleForLegacyPermissionPrompt:Z

    .line 2013
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
