.class public abstract Landroid/app/ActivityManagerInternal;
.super Ljava/lang/Object;
.source "ActivityManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManagerInternal$BindServiceEventListener;,
        Landroid/app/ActivityManagerInternal$BroadcastEventListener;,
        Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;,
        Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;,
        Landroid/app/ActivityManagerInternal$VoiceInteractionManagerProvider;,
        Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    }
.end annotation


# static fields
.field public static final blacklist ALLOW_FULL_ONLY:I = 0x2

.field public static final blacklist ALLOW_NON_FULL:I = 0x0

.field public static final blacklist ALLOW_NON_FULL_IN_PROFILE:I = 0x1

.field public static final blacklist ALLOW_PROFILES_OR_NON_FULL:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist addAppBackgroundRestrictionListener(Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
.end method

.method public abstract blacklist addBindServiceEventListener(Landroid/app/ActivityManagerInternal$BindServiceEventListener;)V
.end method

.method public abstract blacklist addBroadcastEventListener(Landroid/app/ActivityManagerInternal$BroadcastEventListener;)V
.end method

.method public abstract blacklist addForegroundServiceStateListener(Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;)V
.end method

.method public abstract blacklist addPendingTopUid(IILandroid/app/IApplicationThread;)V
.end method

.method public abstract blacklist applyForegroundServiceNotification(Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
.end method

.method public abstract blacklist broadcastCloseSystemDialogs(Ljava/lang/String;)V
.end method

.method public abstract blacklist broadcastGlobalConfigurationChanged(IZ)V
.end method

.method public abstract blacklist broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILandroid/os/Bundle;)I
.end method

.method public abstract blacklist broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZLandroid/os/IBinder;[I)I
.end method

.method public abstract greylist-max-o canStartMoreUsers()Z
.end method

.method public abstract greylist-max-o checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract blacklist checkContentProviderUriPermission(Landroid/net/Uri;III)I
.end method

.method public abstract blacklist cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V
.end method

.method public abstract blacklist clearPendingBackup(I)V
.end method

.method public abstract blacklist clearPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;)V
.end method

.method public abstract blacklist deletePendingTopUid(IJ)V
.end method

.method public abstract blacklist disconnectActivityFromServices(Ljava/lang/Object;)V
.end method

.method public abstract blacklist enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist ensureBootCompleted()V
.end method

.method public abstract blacklist ensureNotSpecialUser(I)V
.end method

.method public abstract blacklist finishBooting()V
.end method

.method public abstract blacklist finishUserSwitch(Ljava/lang/Object;)V
.end method

.method public abstract blacklist getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract blacklist getActivityPresentationInfo(Landroid/os/IBinder;)Landroid/content/pm/ActivityPresentationInfo;
.end method

.method public abstract blacklist getAppProfileStatsForDebugging(JI)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getBootTimeTempAllowListDuration()J
.end method

.method public abstract blacklist getCurrentProfileIds()[I
.end method

.method public abstract blacklist getCurrentUser()Landroid/content/pm/UserInfo;
.end method

.method public abstract blacklist getCurrentUserId()I
.end method

.method public abstract blacklist getInstrumentationSourceUid(I)I
.end method

.method public abstract blacklist getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
.end method

.method public abstract blacklist getIsolatedProcesses(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getMaxRunningUsers()I
.end method

.method public abstract greylist-max-o getMemoryStateForProcesses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ProcessMemoryState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getPackageNameByPid(I)Ljava/lang/String;
.end method

.method public abstract blacklist getPendingIntentActivityAsApp(ILandroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;
.end method

.method public abstract blacklist getPendingIntentActivityAsApp(I[Landroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;
.end method

.method public abstract blacklist getPendingIntentFlags(Landroid/content/IIntentSender;)I
.end method

.method public abstract blacklist getPendingIntentStats()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/PendingIntentStats;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getProcessesWithPendingBindMounts(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getPushMessagingOverQuotaBehavior()I
.end method

.method public abstract blacklist getRestrictionLevel(I)I
.end method

.method public abstract blacklist getRestrictionLevel(Ljava/lang/String;I)I
.end method

.method public abstract blacklist getServiceStartForegroundTimeout()I
.end method

.method public abstract blacklist getStartedUserIds()[I
.end method

.method public abstract blacklist getStorageMountMode(II)I
.end method

.method public abstract blacklist getTaskIdForActivity(Landroid/os/IBinder;Z)I
.end method

.method public abstract blacklist getUidCapability(I)I
.end method

.method public abstract greylist-max-o getUidProcessState(I)I
.end method

.method public abstract blacklist handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract blacklist hasForegroundServiceNotification(Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method public abstract greylist-max-o hasRunningActivity(ILjava/lang/String;)Z
.end method

.method public abstract blacklist hasRunningForegroundService(II)Z
.end method

.method public abstract blacklist hasStartedUserState(I)Z
.end method

.method public abstract blacklist inputDispatchingResumed(I)V
.end method

.method public abstract blacklist inputDispatchingTimedOut(IZLjava/lang/String;)J
.end method

.method public abstract blacklist inputDispatchingTimedOut(Ljava/lang/Object;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)Z
.end method

.method public abstract blacklist isActivityStartsLoggingEnabled()Z
.end method

.method public abstract blacklist isAppBad(Ljava/lang/String;I)Z
.end method

.method public abstract blacklist isAppForeground(I)Z
.end method

.method public abstract blacklist isAppStartModeDisabled(ILjava/lang/String;)Z
.end method

.method public abstract blacklist isAssociatedCompanionApp(II)Z
.end method

.method public abstract blacklist isBackgroundActivityStartsEnabled()Z
.end method

.method public abstract blacklist isBgAutoRestrictedBucketFeatureFlagEnabled()Z
.end method

.method public abstract blacklist isBooted()Z
.end method

.method public abstract blacklist isBooting()Z
.end method

.method public abstract blacklist isCurrentProfile(I)Z
.end method

.method public abstract blacklist isDeviceOwner(I)Z
.end method

.method public abstract blacklist isPendingTopUid(I)Z
.end method

.method public abstract blacklist isProfileOwner(I)Z
.end method

.method public abstract greylist-max-o isRuntimeRestarted()Z
.end method

.method public abstract greylist-max-o isSystemReady()Z
.end method

.method public abstract blacklist isTempAllowlistedForFgsWhileInUse(I)Z
.end method

.method public abstract greylist-max-o isUidActive(I)Z
.end method

.method public abstract blacklist isUserRunning(II)Z
.end method

.method public abstract blacklist killAllBackgroundProcessesExcept(II)V
.end method

.method public abstract greylist-max-o killForegroundAppsForUser(I)V
.end method

.method public abstract blacklist killProcess(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract blacklist killProcessesForRemovedTask(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist monitor()V
.end method

.method public abstract blacklist noteAlarmFinish(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V
.end method

.method public abstract blacklist noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V
.end method

.method public abstract blacklist noteWakeupAlarm(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract greylist-max-o notifyNetworkPolicyRulesUpdated(IJ)V
.end method

.method public abstract blacklist onForegroundServiceNotificationUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V
.end method

.method public abstract blacklist onUidBlockedReasonsChanged(II)V
.end method

.method public abstract greylist-max-o onUserRemoved(I)V
.end method

.method public abstract greylist-max-o onWakefulnessChanged(I)V
.end method

.method public abstract blacklist prepareForPossibleShutdown()V
.end method

.method public abstract blacklist registerAnrController(Landroid/app/AnrController;)V
.end method

.method public abstract blacklist registerNetworkPolicyUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
.end method

.method public abstract blacklist registerProcessObserver(Landroid/app/IProcessObserver;)V
.end method

.method public abstract blacklist reportCurKeyguardUsageEvent(Z)V
.end method

.method public abstract blacklist rescheduleAnrDialog(Ljava/lang/Object;)V
.end method

.method public abstract blacklist restart()V
.end method

.method public abstract blacklist scheduleAppGcs()V
.end method

.method public abstract blacklist sendForegroundProfileChanged(I)V
.end method

.method public abstract blacklist sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract blacklist setBooted(Z)V
.end method

.method public abstract blacklist setBooting(Z)V
.end method

.method public abstract blacklist setCompanionAppUids(ILjava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist setDebugFlagsForStartingActivity(Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;Ljava/lang/Object;)V
.end method

.method public abstract blacklist setDeviceIdleAllowlist([I[I)V
.end method

.method public abstract blacklist setDeviceOwnerUid(I)V
.end method

.method public abstract greylist-max-o setHasOverlayUi(IZ)V
.end method

.method public abstract blacklist setPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;I)V
.end method

.method public abstract blacklist setPendingIntentAllowlistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;JIILjava/lang/String;)V
.end method

.method public abstract blacklist setProfileOwnerUid(Landroid/util/ArraySet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist setStopUserOnSwitch(I)V
.end method

.method public abstract greylist-max-o setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
.end method

.method public abstract greylist-max-o setSwitchingToSystemUserMessage(Ljava/lang/String;)V
.end method

.method public abstract blacklist setVoiceInteractionManagerProvider(Landroid/app/ActivityManagerInternal$VoiceInteractionManagerProvider;)V
.end method

.method public abstract blacklist shouldConfirmCredentials(I)Z
.end method

.method public abstract blacklist startActivityAsUserEmpty(Landroid/os/Bundle;)I
.end method

.method public abstract greylist-max-o startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z
.end method

.method public abstract blacklist startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;)V
.end method

.method public abstract blacklist startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZLandroid/os/IBinder;)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation
.end method

.method public abstract blacklist stopAppForUser(Ljava/lang/String;I)V
.end method

.method public abstract blacklist stopForegroundServicesForChannel(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract blacklist tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V
.end method

.method public abstract blacklist trimApplications()V
.end method

.method public abstract blacklist unregisterAnrController(Landroid/app/AnrController;)V
.end method

.method public abstract blacklist unregisterProcessObserver(Landroid/app/IProcessObserver;)V
.end method

.method public abstract blacklist updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;)V
.end method

.method public abstract blacklist updateBatteryStats(Landroid/content/ComponentName;IIZ)V
.end method

.method public abstract blacklist updateCpuStats()V
.end method

.method public abstract blacklist updateDeviceIdleTempAllowlist([IIZJIILjava/lang/String;I)V
.end method

.method public abstract blacklist updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V
.end method

.method public abstract blacklist updateOomAdj()V
.end method

.method public abstract blacklist updateOomLevelsForDisplay(I)V
.end method
