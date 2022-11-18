.class public Landroid/os/PowerExemptionManager;
.super Ljava/lang/Object;
.source "PowerExemptionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerExemptionManager$ReasonCode;,
        Landroid/os/PowerExemptionManager$TempAllowListType;,
        Landroid/os/PowerExemptionManager$AllowListEvent;
    }
.end annotation


# static fields
.field public static final whitelist EVENT_MMS:I = 0x2

.field public static final whitelist EVENT_SMS:I = 0x1

.field public static final whitelist EVENT_UNSPECIFIED:I = 0x0

.field public static final whitelist REASON_ACCOUNT_TRANSFER:I = 0x68

.field public static final blacklist REASON_ACTIVE_DEVICE_ADMIN:I = 0x144

.field public static final whitelist REASON_ACTIVITY_RECOGNITION:I = 0x67

.field public static final blacklist REASON_ACTIVITY_STARTER:I = 0x34

.field public static final blacklist REASON_ACTIVITY_VISIBILITY_GRACE_PERIOD:I = 0x43

.field public static final blacklist REASON_ALARM_MANAGER_ALARM_CLOCK:I = 0x12d

.field public static final blacklist REASON_ALARM_MANAGER_WHILE_IDLE:I = 0x12e

.field public static final blacklist REASON_ALLOWLISTED_PACKAGE:I = 0x41

.field public static final blacklist REASON_APPOP:I = 0x42

.field public static final blacklist REASON_BACKGROUND_ACTIVITY_PERMISSION:I = 0x3a

.field public static final blacklist REASON_BACKGROUND_FGS_PERMISSION:I = 0x3b

.field public static final whitelist REASON_BLUETOOTH_BROADCAST:I = 0xcb

.field public static final blacklist REASON_BOOT_COMPLETED:I = 0xc8

.field public static final blacklist REASON_CARRIER_PRIVILEGED_APP:I = 0x141

.field public static final blacklist REASON_COMPANION_DEVICE_MANAGER:I = 0x39

.field public static final blacklist REASON_CURRENT_INPUT_METHOD:I = 0x47

.field public static final blacklist REASON_DENIED:I = -0x1

.field public static final blacklist REASON_DEVICE_DEMO_MODE:I = 0x3f

.field public static final blacklist REASON_DEVICE_OWNER:I = 0x37

.field public static final blacklist REASON_DISALLOW_APPS_CONTROL:I = 0x143

.field public static final blacklist REASON_DOMAIN_VERIFICATION_V1:I = 0x133

.field public static final blacklist REASON_DOMAIN_VERIFICATION_V2:I = 0x134

.field public static final blacklist REASON_DPO_PROTECTED_APP:I = 0x142

.field public static final blacklist REASON_EVENT_MMS:I = 0x13b

.field public static final blacklist REASON_EVENT_SMS:I = 0x13a

.field public static final blacklist REASON_FGS_BINDING:I = 0x36

.field public static final whitelist REASON_GEOFENCING:I = 0x64

.field public static final blacklist REASON_INSTR_BACKGROUND_ACTIVITY_PERMISSION:I = 0x3c

.field public static final blacklist REASON_INSTR_BACKGROUND_FGS_PERMISSION:I = 0x3d

.field public static final blacklist REASON_KEY_CHAIN:I = 0x130

.field public static final blacklist REASON_LOCALE_CHANGED:I = 0xce

.field public static final whitelist REASON_LOCATION_PROVIDER:I = 0x138
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist REASON_LOCKED_BOOT_COMPLETED:I = 0xca

.field public static final blacklist REASON_MEDIA_BUTTON:I = 0x139

.field public static final blacklist REASON_MEDIA_NOTIFICATION_TRANSFER:I = 0x145

.field public static final blacklist REASON_MEDIA_SESSION_CALLBACK:I = 0x13d

.field public static final blacklist REASON_NOTIFICATION_SERVICE:I = 0x136

.field public static final blacklist REASON_OPT_OUT_REQUESTED:I = 0x3e8

.field public static final blacklist REASON_OP_ACTIVATE_PLATFORM_VPN:I = 0x45

.field public static final blacklist REASON_OP_ACTIVATE_VPN:I = 0x44

.field public static final whitelist REASON_OTHER:I = 0x1

.field public static final blacklist REASON_PACKAGE_REPLACED:I = 0x137

.field public static final blacklist REASON_PACKAGE_VERIFIER:I = 0x131

.field public static final blacklist REASON_PRE_BOOT_COMPLETED:I = 0xc9

.field public static final blacklist REASON_PROC_STATE_BFGS:I = 0xf

.field public static final blacklist REASON_PROC_STATE_BTOP:I = 0xd

.field public static final blacklist REASON_PROC_STATE_FGS:I = 0xe

.field public static final blacklist REASON_PROC_STATE_PERSISTENT:I = 0xa

.field public static final blacklist REASON_PROC_STATE_PERSISTENT_UI:I = 0xb

.field public static final blacklist REASON_PROC_STATE_TOP:I = 0xc

.field public static final blacklist REASON_PROFILE_OWNER:I = 0x38

.field public static final whitelist REASON_PUSH_MESSAGING:I = 0x65

.field public static final whitelist REASON_PUSH_MESSAGING_OVER_QUOTA:I = 0x66

.field public static final whitelist REASON_REFRESH_SAFETY_SOURCES:I = 0xd0

.field public static final blacklist REASON_ROLE_DIALER:I = 0x13e

.field public static final blacklist REASON_ROLE_EMERGENCY:I = 0x13f

.field public static final blacklist REASON_SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED:I = 0xcf

.field public static final blacklist REASON_SERVICE_LAUNCH:I = 0x12f

.field public static final blacklist REASON_SHELL:I = 0x13c

.field public static final blacklist REASON_START_ACTIVITY_FLAG:I = 0x35

.field public static final blacklist REASON_SYNC_MANAGER:I = 0x132

.field public static final blacklist REASON_SYSTEM_ALERT_WINDOW_PERMISSION:I = 0x3e

.field public static final blacklist REASON_SYSTEM_ALLOW_LISTED:I = 0x12c

.field public static final blacklist REASON_SYSTEM_MODULE:I = 0x140

.field public static final blacklist REASON_SYSTEM_UID:I = 0x33

.field public static final blacklist REASON_TEMP_ALLOWED_WHILE_IN_USE:I = 0x46

.field public static final blacklist REASON_TIMEZONE_CHANGED:I = 0xcc

.field public static final blacklist REASON_TIME_CHANGED:I = 0xcd

.field public static final blacklist REASON_UID_VISIBLE:I = 0x32

.field public static final whitelist REASON_UNKNOWN:I = 0x0

.field public static final blacklist REASON_VPN:I = 0x135

.field public static final whitelist TEMPORARY_ALLOW_LIST_TYPE_FOREGROUND_SERVICE_ALLOWED:I = 0x0

.field public static final whitelist TEMPORARY_ALLOW_LIST_TYPE_FOREGROUND_SERVICE_NOT_ALLOWED:I = 0x1

.field public static final whitelist TEMPORARY_ALLOW_LIST_TYPE_NONE:I = -0x1


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/os/IDeviceIdleController;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-object p1, p0, Landroid/os/PowerExemptionManager;->mContext:Landroid/content/Context;

    .line 484
    const-class v0, Landroid/os/DeviceIdleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DeviceIdleManager;

    invoke-virtual {v0}, Landroid/os/DeviceIdleManager;->getService()Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    .line 485
    return-void
.end method

.method public static blacklist getExemptionReasonForStatsd(I)I
    .locals 1
    .param p0, "reasonCode"    # I

    .line 650
    sparse-switch p0, :sswitch_data_0

    .line 688
    const/4 v0, 0x1

    return v0

    .line 686
    :sswitch_0
    const/16 v0, 0x144

    return v0

    .line 684
    :sswitch_1
    const/16 v0, 0x143

    return v0

    .line 682
    :sswitch_2
    const/16 v0, 0x142

    return v0

    .line 674
    :sswitch_3
    const/16 v0, 0x141

    return v0

    .line 672
    :sswitch_4
    const/16 v0, 0x140

    return v0

    .line 680
    :sswitch_5
    const/16 v0, 0x13f

    return v0

    .line 678
    :sswitch_6
    const/16 v0, 0x13e

    return v0

    .line 676
    :sswitch_7
    const/16 v0, 0x12c

    return v0

    .line 670
    :sswitch_8
    const/16 v0, 0x45

    return v0

    .line 668
    :sswitch_9
    const/16 v0, 0x44

    return v0

    .line 654
    :sswitch_a
    const/16 v0, 0x41

    return v0

    .line 658
    :sswitch_b
    const/16 v0, 0x3f

    return v0

    .line 656
    :sswitch_c
    const/16 v0, 0x39

    return v0

    .line 662
    :sswitch_d
    const/16 v0, 0x38

    return v0

    .line 660
    :sswitch_e
    const/16 v0, 0x37

    return v0

    .line 652
    :sswitch_f
    const/16 v0, 0x33

    return v0

    .line 666
    :sswitch_10
    const/16 v0, 0xb

    return v0

    .line 664
    :sswitch_11
    const/16 v0, 0xa

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_11
        0xb -> :sswitch_10
        0x33 -> :sswitch_f
        0x37 -> :sswitch_e
        0x38 -> :sswitch_d
        0x39 -> :sswitch_c
        0x3f -> :sswitch_b
        0x41 -> :sswitch_a
        0x44 -> :sswitch_9
        0x45 -> :sswitch_8
        0x12c -> :sswitch_7
        0x13e -> :sswitch_6
        0x13f -> :sswitch_5
        0x140 -> :sswitch_4
        0x141 -> :sswitch_3
        0x142 -> :sswitch_2
        0x143 -> :sswitch_1
        0x144 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist getReasonCodeFromProcState(I)I
    .locals 1
    .param p0, "procState"    # I

    .line 628
    if-gtz p0, :cond_0

    .line 629
    const/16 v0, 0xa

    return v0

    .line 630
    :cond_0
    const/4 v0, 0x1

    if-gt p0, v0, :cond_1

    .line 631
    const/16 v0, 0xb

    return v0

    .line 632
    :cond_1
    const/4 v0, 0x2

    if-gt p0, v0, :cond_2

    .line 633
    const/16 v0, 0xc

    return v0

    .line 634
    :cond_2
    const/4 v0, 0x3

    if-gt p0, v0, :cond_3

    .line 635
    const/16 v0, 0xd

    return v0

    .line 636
    :cond_3
    const/4 v0, 0x4

    if-gt p0, v0, :cond_4

    .line 637
    const/16 v0, 0xe

    return v0

    .line 638
    :cond_4
    const/4 v0, 0x5

    if-gt p0, v0, :cond_5

    .line 639
    const/16 v0, 0xf

    return v0

    .line 641
    :cond_5
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist reasonCodeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "reasonCode"    # I

    .line 699
    sparse-switch p0, :sswitch_data_0

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 839
    :sswitch_0
    const-string v0, "REASON_OPT_OUT_REQUESTED"

    return-object v0

    .line 841
    :sswitch_1
    const-string v0, "REASON_MEDIA_NOTIFICATION_TRANSFER"

    return-object v0

    .line 837
    :sswitch_2
    const-string v0, "ACTIVE_DEVICE_ADMIN"

    return-object v0

    .line 835
    :sswitch_3
    const-string v0, "DISALLOW_APPS_CONTROL"

    return-object v0

    .line 833
    :sswitch_4
    const-string v0, "DPO_PROTECTED_APP"

    return-object v0

    .line 831
    :sswitch_5
    const-string v0, "CARRIER_PRIVILEGED_APP"

    return-object v0

    .line 829
    :sswitch_6
    const-string v0, "SYSTEM_MODULE"

    return-object v0

    .line 827
    :sswitch_7
    const-string v0, "ROLE_EMERGENCY"

    return-object v0

    .line 825
    :sswitch_8
    const-string v0, "ROLE_DIALER"

    return-object v0

    .line 823
    :sswitch_9
    const-string v0, "MEDIA_SESSION_CALLBACK"

    return-object v0

    .line 821
    :sswitch_a
    const-string v0, "SHELL"

    return-object v0

    .line 819
    :sswitch_b
    const-string v0, "EVENT_MMS"

    return-object v0

    .line 817
    :sswitch_c
    const-string v0, "EVENT_SMS"

    return-object v0

    .line 815
    :sswitch_d
    const-string v0, "MEDIA_BUTTON"

    return-object v0

    .line 813
    :sswitch_e
    const-string v0, "LOCATION_PROVIDER"

    return-object v0

    .line 811
    :sswitch_f
    const-string v0, "PACKAGE_REPLACED"

    return-object v0

    .line 809
    :sswitch_10
    const-string v0, "NOTIFICATION_SERVICE"

    return-object v0

    .line 807
    :sswitch_11
    const-string v0, "VPN"

    return-object v0

    .line 805
    :sswitch_12
    const-string v0, "DOMAIN_VERIFICATION_V2"

    return-object v0

    .line 803
    :sswitch_13
    const-string v0, "DOMAIN_VERIFICATION_V1"

    return-object v0

    .line 801
    :sswitch_14
    const-string v0, "SYNC_MANAGER"

    return-object v0

    .line 799
    :sswitch_15
    const-string v0, "PACKAGE_VERIFIER"

    return-object v0

    .line 797
    :sswitch_16
    const-string v0, "KEY_CHAIN"

    return-object v0

    .line 795
    :sswitch_17
    const-string v0, "SERVICE_LAUNCH"

    return-object v0

    .line 793
    :sswitch_18
    const-string v0, "ALARM_MANAGER_WHILE_IDLE"

    return-object v0

    .line 791
    :sswitch_19
    const-string v0, "ALARM_MANAGER_ALARM_CLOCK"

    return-object v0

    .line 789
    :sswitch_1a
    const-string v0, "SYSTEM_ALLOW_LISTED"

    return-object v0

    .line 787
    :sswitch_1b
    const-string v0, "REASON_REFRESH_SAFETY_SOURCES"

    return-object v0

    .line 785
    :sswitch_1c
    const-string v0, "REASON_SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED"

    return-object v0

    .line 783
    :sswitch_1d
    const-string v0, "LOCALE_CHANGED"

    return-object v0

    .line 781
    :sswitch_1e
    const-string v0, "TIME_CHANGED"

    return-object v0

    .line 779
    :sswitch_1f
    const-string v0, "TIMEZONE_CHANGED"

    return-object v0

    .line 777
    :sswitch_20
    const-string v0, "BLUETOOTH_BROADCAST"

    return-object v0

    .line 775
    :sswitch_21
    const-string v0, "LOCKED_BOOT_COMPLETED"

    return-object v0

    .line 773
    :sswitch_22
    const-string v0, "PRE_BOOT_COMPLETED"

    return-object v0

    .line 771
    :sswitch_23
    const-string v0, "BOOT_COMPLETED"

    return-object v0

    .line 769
    :sswitch_24
    const-string v0, "REASON_ACCOUNT_TRANSFER"

    return-object v0

    .line 767
    :sswitch_25
    const-string v0, "ACTIVITY_RECOGNITION"

    return-object v0

    .line 765
    :sswitch_26
    const-string v0, "PUSH_MESSAGING_OVER_QUOTA"

    return-object v0

    .line 763
    :sswitch_27
    const-string v0, "PUSH_MESSAGING"

    return-object v0

    .line 761
    :sswitch_28
    const-string v0, "GEOFENCING"

    return-object v0

    .line 757
    :sswitch_29
    const-string v0, "CURRENT_INPUT_METHOD"

    return-object v0

    .line 759
    :sswitch_2a
    const-string v0, "TEMP_ALLOWED_WHILE_IN_USE"

    return-object v0

    .line 755
    :sswitch_2b
    const-string v0, "OP_ACTIVATE_PLATFORM_VPN"

    return-object v0

    .line 753
    :sswitch_2c
    const-string v0, "OP_ACTIVATE_VPN"

    return-object v0

    .line 751
    :sswitch_2d
    const-string v0, "ACTIVITY_VISIBILITY_GRACE_PERIOD"

    return-object v0

    .line 749
    :sswitch_2e
    const-string v0, "APPOP"

    return-object v0

    .line 747
    :sswitch_2f
    const-string v0, "ALLOWLISTED_PACKAGE"

    return-object v0

    .line 745
    :sswitch_30
    const-string v0, "DEVICE_DEMO_MODE"

    return-object v0

    .line 743
    :sswitch_31
    const-string v0, "SYSTEM_ALERT_WINDOW_PERMISSION"

    return-object v0

    .line 741
    :sswitch_32
    const-string v0, "INSTR_BACKGROUND_FGS_PERMISSION"

    return-object v0

    .line 739
    :sswitch_33
    const-string v0, "INSTR_BACKGROUND_ACTIVITY_PERMISSION"

    return-object v0

    .line 737
    :sswitch_34
    const-string v0, "BACKGROUND_FGS_PERMISSION"

    return-object v0

    .line 735
    :sswitch_35
    const-string v0, "BACKGROUND_ACTIVITY_PERMISSION"

    return-object v0

    .line 733
    :sswitch_36
    const-string v0, "COMPANION_DEVICE_MANAGER"

    return-object v0

    .line 731
    :sswitch_37
    const-string v0, "PROFILE_OWNER"

    return-object v0

    .line 729
    :sswitch_38
    const-string v0, "DEVICE_OWNER"

    return-object v0

    .line 727
    :sswitch_39
    const-string v0, "FGS_BINDING"

    return-object v0

    .line 725
    :sswitch_3a
    const-string v0, "START_ACTIVITY_FLAG"

    return-object v0

    .line 723
    :sswitch_3b
    const-string v0, "ACTIVITY_STARTER"

    return-object v0

    .line 721
    :sswitch_3c
    const-string v0, "SYSTEM_UID"

    return-object v0

    .line 719
    :sswitch_3d
    const-string v0, "UID_VISIBLE"

    return-object v0

    .line 717
    :sswitch_3e
    const-string v0, "PROC_STATE_BFGS"

    return-object v0

    .line 715
    :sswitch_3f
    const-string v0, "PROC_STATE_FGS"

    return-object v0

    .line 713
    :sswitch_40
    const-string v0, "PROC_STATE_BTOP"

    return-object v0

    .line 711
    :sswitch_41
    const-string v0, "PROC_STATE_TOP"

    return-object v0

    .line 709
    :sswitch_42
    const-string v0, "PROC_STATE_PERSISTENT_UI"

    return-object v0

    .line 707
    :sswitch_43
    const-string v0, "PROC_STATE_PERSISTENT"

    return-object v0

    .line 705
    :sswitch_44
    const-string v0, "OTHER"

    return-object v0

    .line 703
    :sswitch_45
    const-string v0, "UNKNOWN"

    return-object v0

    .line 701
    :sswitch_46
    const-string v0, "DENIED"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_46
        0x0 -> :sswitch_45
        0x1 -> :sswitch_44
        0xa -> :sswitch_43
        0xb -> :sswitch_42
        0xc -> :sswitch_41
        0xd -> :sswitch_40
        0xe -> :sswitch_3f
        0xf -> :sswitch_3e
        0x32 -> :sswitch_3d
        0x33 -> :sswitch_3c
        0x34 -> :sswitch_3b
        0x35 -> :sswitch_3a
        0x36 -> :sswitch_39
        0x37 -> :sswitch_38
        0x38 -> :sswitch_37
        0x39 -> :sswitch_36
        0x3a -> :sswitch_35
        0x3b -> :sswitch_34
        0x3c -> :sswitch_33
        0x3d -> :sswitch_32
        0x3e -> :sswitch_31
        0x3f -> :sswitch_30
        0x41 -> :sswitch_2f
        0x42 -> :sswitch_2e
        0x43 -> :sswitch_2d
        0x44 -> :sswitch_2c
        0x45 -> :sswitch_2b
        0x46 -> :sswitch_2a
        0x47 -> :sswitch_29
        0x64 -> :sswitch_28
        0x65 -> :sswitch_27
        0x66 -> :sswitch_26
        0x67 -> :sswitch_25
        0x68 -> :sswitch_24
        0xc8 -> :sswitch_23
        0xc9 -> :sswitch_22
        0xca -> :sswitch_21
        0xcb -> :sswitch_20
        0xcc -> :sswitch_1f
        0xcd -> :sswitch_1e
        0xce -> :sswitch_1d
        0xcf -> :sswitch_1c
        0xd0 -> :sswitch_1b
        0x12c -> :sswitch_1a
        0x12d -> :sswitch_19
        0x12e -> :sswitch_18
        0x12f -> :sswitch_17
        0x130 -> :sswitch_16
        0x131 -> :sswitch_15
        0x132 -> :sswitch_14
        0x133 -> :sswitch_13
        0x134 -> :sswitch_12
        0x135 -> :sswitch_11
        0x136 -> :sswitch_10
        0x137 -> :sswitch_f
        0x138 -> :sswitch_e
        0x139 -> :sswitch_d
        0x13a -> :sswitch_c
        0x13b -> :sswitch_b
        0x13c -> :sswitch_a
        0x13d -> :sswitch_9
        0x13e -> :sswitch_8
        0x13f -> :sswitch_7
        0x140 -> :sswitch_6
        0x141 -> :sswitch_5
        0x142 -> :sswitch_4
        0x143 -> :sswitch_3
        0x144 -> :sswitch_2
        0x145 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public blacklist addToPermanentAllowList(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 494
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/PowerExemptionManager;->addToPermanentAllowList(Ljava/util/List;)V

    .line 495
    return-void
.end method

.method public blacklist addToPermanentAllowList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 505
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApps(Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    nop

    .line 509
    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addToTemporaryAllowList(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reasonCode"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "durationMs"    # J

    .line 583
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    iget-object v1, p0, Landroid/os/PowerExemptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v4

    move-object v1, p1

    move-wide v2, p4

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    nop

    .line 588
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addToTemporaryAllowListForEvent(Ljava/lang/String;ILjava/lang/String;I)J
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reasonCode"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "event"    # I

    .line 607
    packed-switch p4, :pswitch_data_0

    .line 616
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    goto :goto_0

    .line 609
    :pswitch_0
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    iget-object v1, p0, Landroid/os/PowerExemptionManager;->mContext:Landroid/content/Context;

    .line 610
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 609
    invoke-interface {v0, p1, v1, p2, p3}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 612
    :pswitch_1
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    iget-object v1, p0, Landroid/os/PowerExemptionManager;->mContext:Landroid/content/Context;

    .line 613
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 612
    invoke-interface {v0, p1, v1, p2, p3}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 616
    :goto_0
    iget-object v1, p0, Landroid/os/PowerExemptionManager;->mContext:Landroid/content/Context;

    .line 617
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 616
    invoke-interface {v0, p1, v1, p2, p3}, Landroid/os/IDeviceIdleController;->whitelistAppTemporarily(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getAllowListedAppIds(Z)[I
    .locals 2
    .param p1, "includingIdle"    # Z

    .line 523
    if-eqz p1, :cond_0

    .line 524
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v0

    return-object v0

    .line 526
    :cond_0
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAllowListed(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includingIdle"    # Z

    .line 543
    if-eqz p2, :cond_0

    .line 544
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 546
    :cond_0
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeFromPermanentAllowList(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 564
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerExemptionManager;->mService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    nop

    .line 568
    return-void

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
