.class public interface abstract Landroid/app/job/IJobInfoExt;
.super Ljava/lang/Object;
.source "IJobInfoExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/IJobInfoExt$JobBuilderExt;
    }
.end annotation


# static fields
.field public static final whitelist LEVEL_CPU_ABNORMAL_HEAVY:I = 0x3

.field public static final whitelist LEVEL_CPU_ABNORMAL_MIDDLE:I = 0x2

.field public static final whitelist LEVEL_CPU_ABNORMAL_SLIGHT:I = 0x1

.field public static final whitelist LEVEL_CPU_NORMAL:I = 0x0

.field public static final whitelist SCENE_MODE_GAME:I = 0x4

.field public static final whitelist SCENE_MODE_VIDEO:I = 0x1

.field public static final whitelist SCENE_MODE_VIDEO_CALL:I = 0x2

.field public static final whitelist TAG:Ljava/lang/String; = "JobInfoExt"

.field public static final whitelist TYPE_PROTECT_FORE_FRAME:I = 0x0

.field public static final whitelist TYPE_PROTECT_FORE_NET:I = 0x1


# virtual methods
.method public whitelist getBooleanConstraint(Ljava/lang/String;Z)Z
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 40
    return p2
.end method

.method public whitelist getIntConstraint(Ljava/lang/String;I)I
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 48
    return p2
.end method

.method public whitelist getLongConstraint(Ljava/lang/String;J)J
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 52
    return-wide p2
.end method

.method public whitelist getStringConstraint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 44
    return-object p2
.end method

.method public whitelist initJobInfo(Ljava/lang/Object;)V
    .locals 0
    .param p1, "in"    # Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public whitelist initJobInfoPure(Landroid/app/job/IJobInfoExt$JobBuilderExt;)V
    .locals 0
    .param p1, "jobBuilderExt"    # Landroid/app/job/IJobInfoExt$JobBuilderExt;

    .line 70
    return-void
.end method

.method public whitelist setBooleanConstraint(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 56
    return-void
.end method

.method public whitelist setIntConstraint(Ljava/lang/String;I)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 62
    return-void
.end method

.method public whitelist setLongConstraint(Landroid/app/job/JobInfo;Ljava/lang/String;J)V
    .locals 0
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 65
    return-void
.end method

.method public whitelist setStringConstraint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 59
    return-void
.end method

.method public whitelist writeToParcelJobInfo(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "out"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .line 72
    return-void
.end method
