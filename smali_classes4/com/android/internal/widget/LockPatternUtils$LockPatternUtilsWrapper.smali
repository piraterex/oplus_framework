.class Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilsWrapper;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"

# interfaces
.implements Landroid/widget/ILockPatternUtilsWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockPatternUtilsWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 1862
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilsWrapper;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilsWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilsWrapper;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method


# virtual methods
.method public blacklist getBoolean(Ljava/lang/String;ZI)Z
    .locals 1
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .line 1877
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilsWrapper;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->-$$Nest$mgetBoolean(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public blacklist getDebug()Z
    .locals 1

    .line 1869
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    return v0
.end method

.method public blacklist getLockPatternUtilsExt()Lcom/android/internal/widget/ILockPatternUtilsExt;
    .locals 1

    .line 1865
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilsWrapper;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->-$$Nest$fgetmLockPatternUtilsExt(Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/ILockPatternUtilsExt;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .line 1885
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilsWrapper;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->-$$Nest$mgetLong(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getTag()Ljava/lang/String;
    .locals 1

    .line 1873
    const-string v0, "LockPatternUtils"

    return-object v0
.end method

.method public blacklist setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 1881
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilsWrapper;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->-$$Nest$msetBoolean(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZI)V

    .line 1882
    return-void
.end method

.method public blacklist setLong(Ljava/lang/String;JI)V
    .locals 1
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .line 1889
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$LockPatternUtilsWrapper;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->-$$Nest$msetLong(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JI)V

    .line 1890
    return-void
.end method
