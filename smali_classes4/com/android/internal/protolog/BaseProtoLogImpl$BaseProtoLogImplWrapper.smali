.class Lcom/android/internal/protolog/BaseProtoLogImpl$BaseProtoLogImplWrapper;
.super Ljava/lang/Object;
.source "BaseProtoLogImpl.java"

# interfaces
.implements Lcom/android/internal/protolog/IBaseProtoLogImplWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/BaseProtoLogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseProtoLogImplWrapper"
.end annotation


# instance fields
.field private blacklist mBaseProtoLogImplExt:Lcom/android/internal/protolog/IBaseProtoLogImplExt;

.field final synthetic blacklist this$0:Lcom/android/internal/protolog/BaseProtoLogImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetExtImpl(Lcom/android/internal/protolog/BaseProtoLogImpl$BaseProtoLogImplWrapper;)Lcom/android/internal/protolog/IBaseProtoLogImplExt;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/protolog/BaseProtoLogImpl$BaseProtoLogImplWrapper;->getExtImpl()Lcom/android/internal/protolog/IBaseProtoLogImplExt;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/protolog/BaseProtoLogImpl;)V
    .locals 1

    .line 403
    iput-object p1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl$BaseProtoLogImplWrapper;->this$0:Lcom/android/internal/protolog/BaseProtoLogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    const-class v0, Lcom/android/internal/protolog/IBaseProtoLogImplExt;

    .line 407
    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/protolog/IBaseProtoLogImplExt;

    iput-object p1, p0, Lcom/android/internal/protolog/BaseProtoLogImpl$BaseProtoLogImplWrapper;->mBaseProtoLogImplExt:Lcom/android/internal/protolog/IBaseProtoLogImplExt;

    .line 406
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/protolog/BaseProtoLogImpl;Lcom/android/internal/protolog/BaseProtoLogImpl$BaseProtoLogImplWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/BaseProtoLogImpl$BaseProtoLogImplWrapper;-><init>(Lcom/android/internal/protolog/BaseProtoLogImpl;)V

    return-void
.end method

.method private blacklist getExtImpl()Lcom/android/internal/protolog/IBaseProtoLogImplExt;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/android/internal/protolog/BaseProtoLogImpl$BaseProtoLogImplWrapper;->mBaseProtoLogImplExt:Lcom/android/internal/protolog/IBaseProtoLogImplExt;

    return-object v0
.end method


# virtual methods
.method public blacklist getLogGroups()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation

    .line 421
    sget-object v0, Lcom/android/internal/protolog/BaseProtoLogImpl;->LOG_GROUPS:Ljava/util/TreeMap;

    return-object v0
.end method

.method public varargs blacklist setLogging(ZZLjava/io/PrintWriter;[Ljava/lang/String;)I
    .locals 1
    .param p1, "setTextLogging"    # Z
    .param p2, "value"    # Z
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "groups"    # [Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/android/internal/protolog/BaseProtoLogImpl$BaseProtoLogImplWrapper;->this$0:Lcom/android/internal/protolog/BaseProtoLogImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/protolog/BaseProtoLogImpl;->setLogging(ZZLjava/io/PrintWriter;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
