.class public Landroid/service/notification/ZenModeConfig$EventInfo;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventInfo"
.end annotation


# static fields
.field public static final greylist-max-o REPLY_ANY_EXCEPT_NO:I = 0x0

.field public static final greylist-max-o REPLY_YES:I = 0x2

.field public static final greylist-max-o REPLY_YES_OR_MAYBE:I = 0x1


# instance fields
.field public blacklist calName:Ljava/lang/String;

.field public blacklist calendarId:Ljava/lang/Long;

.field public greylist-max-o reply:I

.field public greylist-max-o userId:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 1664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1669
    const/16 v0, -0x2710

    iput v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    return-void
.end method

.method public static greylist-max-o resolveUserId(I)I
    .locals 1
    .param p0, "userId"    # I

    .line 1699
    const/16 v0, -0x2710

    if-ne p0, v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method


# virtual methods
.method public greylist-max-o copy()Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 2

    .line 1690
    new-instance v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 1691
    .local v0, "rt":Landroid/service/notification/ZenModeConfig$EventInfo;
    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 1692
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 1693
    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 1694
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 1695
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1681
    instance-of v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1682
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 1683
    .local v0, "other":Landroid/service/notification/ZenModeConfig$EventInfo;
    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 1684
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 1686
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1683
    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 1676
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
