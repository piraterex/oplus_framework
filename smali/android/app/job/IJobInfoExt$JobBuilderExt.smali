.class public Landroid/app/job/IJobInfoExt$JobBuilderExt;
.super Ljava/lang/Object;
.source "IJobInfoExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/IJobInfoExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JobBuilderExt"
.end annotation


# instance fields
.field public whitelist mHasCpuConstraint:Z

.field public whitelist mHasProtectSceneConstraint:Z

.field public whitelist mHasTemperatureConstraint:Z

.field public whitelist mIsFastIdle:Z

.field public whitelist mIsOplusJob:Z

.field public whitelist mOplusExtraStr:Ljava/lang/String;

.field public whitelist mProtectForeType:I

.field public whitelist mProtectScene:I

.field public whitelist mRequiresBattIdle:Z

.field public whitelist mRequiresProtectFore:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist setFastIdle(Z)Landroid/app/job/IJobInfoExt$JobBuilderExt;
    .locals 0
    .param p1, "isFastIdle"    # Z

    .line 114
    iput-boolean p1, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mIsFastIdle:Z

    .line 115
    return-object p0
.end method

.method public whitelist setHasCpuConstraint(Z)Landroid/app/job/IJobInfoExt$JobBuilderExt;
    .locals 0
    .param p1, "hasCpuConstraint"    # Z

    .line 138
    iput-boolean p1, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mHasCpuConstraint:Z

    .line 139
    return-object p0
.end method

.method public whitelist setHasTemperatureConstraint(Z)Landroid/app/job/IJobInfoExt$JobBuilderExt;
    .locals 0
    .param p1, "hasTemperatureConstraint"    # Z

    .line 149
    iput-boolean p1, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mHasTemperatureConstraint:Z

    .line 150
    return-object p0
.end method

.method public whitelist setOplusExtraStr(Ljava/lang/String;)Landroid/app/job/IJobInfoExt$JobBuilderExt;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .line 143
    iput-object p1, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mOplusExtraStr:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public whitelist setOplusJob(Z)Landroid/app/job/IJobInfoExt$JobBuilderExt;
    .locals 0
    .param p1, "isOplusJob"    # Z

    .line 122
    iput-boolean p1, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mIsOplusJob:Z

    .line 123
    return-object p0
.end method

.method public whitelist setRequiresBattIdle(ZI)Landroid/app/job/IJobInfoExt$JobBuilderExt;
    .locals 0
    .param p1, "requiresBattIdle"    # Z
    .param p2, "extra"    # I

    .line 106
    iput-boolean p1, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mRequiresBattIdle:Z

    .line 107
    return-object p0
.end method

.method public whitelist setRequiresProtectFore(Z)Landroid/app/job/IJobInfoExt$JobBuilderExt;
    .locals 1
    .param p1, "requiresProtectFore"    # Z

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/job/IJobInfoExt$JobBuilderExt;->setRequiresProtectFore(ZI)Landroid/app/job/IJobInfoExt$JobBuilderExt;

    .line 128
    return-object p0
.end method

.method public whitelist setRequiresProtectFore(ZI)Landroid/app/job/IJobInfoExt$JobBuilderExt;
    .locals 0
    .param p1, "requiresProtectFore"    # Z
    .param p2, "type"    # I

    .line 132
    iput-boolean p1, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mRequiresProtectFore:Z

    .line 133
    iput p2, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mProtectForeType:I

    .line 134
    return-object p0
.end method

.method public whitelist setRequiresProtectScene(ZI)Landroid/app/job/IJobInfoExt$JobBuilderExt;
    .locals 0
    .param p1, "requiresProtectScene"    # Z
    .param p2, "protectScene"    # I

    .line 153
    iput-boolean p1, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mHasProtectSceneConstraint:Z

    .line 154
    iput p2, p0, Landroid/app/job/IJobInfoExt$JobBuilderExt;->mProtectScene:I

    .line 155
    return-object p0
.end method
