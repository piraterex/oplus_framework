.class public final Landroid/service/notification/Condition;
.super Ljava/lang/Object;
.source "Condition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/Condition$State;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/Condition;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_RELEVANT_ALWAYS:I = 0x2

.field public static final whitelist FLAG_RELEVANT_NOW:I = 0x1

.field public static final whitelist SCHEME:Ljava/lang/String; = "condition"

.field public static final whitelist STATE_ERROR:I = 0x3

.field public static final whitelist STATE_FALSE:I = 0x0

.field public static final whitelist STATE_TRUE:I = 0x1

.field public static final whitelist STATE_UNKNOWN:I = 0x2


# instance fields
.field public final whitelist flags:I

.field public final whitelist icon:I

.field public final whitelist id:Landroid/net/Uri;

.field public final whitelist line1:Ljava/lang/String;

.field public final whitelist line2:Ljava/lang/String;

.field public final whitelist state:I

.field public final whitelist summary:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 231
    new-instance v0, Landroid/service/notification/Condition$1;

    invoke-direct {v0}, Landroid/service/notification/Condition$1;-><init>()V

    sput-object v0, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 8
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "state"    # I

    .line 99
    const-string v3, ""

    const-string v4, ""

    const/4 v5, -0x1

    const/4 v7, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 100
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 3
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "line1"    # Ljava/lang/String;
    .param p4, "line2"    # Ljava/lang/String;
    .param p5, "icon"    # I
    .param p6, "state"    # I
    .param p7, "flags"    # I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-eqz p1, :cond_2

    .line 105
    if-eqz p2, :cond_1

    .line 106
    invoke-static {p6}, Landroid/service/notification/Condition;->isValidState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iput-object p1, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 108
    iput-object p2, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    .line 111
    iput p5, p0, Landroid/service/notification/Condition;->icon:I

    .line 112
    iput p6, p0, Landroid/service/notification/Condition;->state:I

    .line 113
    iput p7, p0, Landroid/service/notification/Condition;->flags:I

    .line 114
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "summary is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "id is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .line 117
    const-class v0, Landroid/service/notification/Condition;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 117
    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 124
    return-void
.end method

.method public static whitelist isValidId(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2
    .param p0, "id"    # Landroid/net/Uri;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 228
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "condition"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static greylist-max-o isValidState(I)Z
    .locals 1
    .param p0, "state"    # I

    .line 127
    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist newId(Landroid/content/Context;)Landroid/net/Uri$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 222
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 223
    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 222
    return-object v0
.end method

.method public static whitelist relevanceToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "flags"    # I

    .line 179
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 180
    .local v0, "now":Z
    :goto_0
    and-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_1

    move v1, v2

    .line 181
    .local v1, "always":Z
    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const-string v2, "NONE"

    return-object v2

    .line 182
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const-string v2, "NOW, ALWAYS"

    return-object v2

    .line 183
    :cond_3
    if-eqz v0, :cond_4

    const-string v2, "NOW"

    goto :goto_1

    :cond_4
    const-string v2, "ALWAYS"

    :goto_1
    return-object v2
.end method

.method public static whitelist stateToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .line 171
    if-nez p0, :cond_0

    const-string v0, "STATE_FALSE"

    return-object v0

    .line 172
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "STATE_TRUE"

    return-object v0

    .line 173
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "STATE_UNKNOWN"

    return-object v0

    .line 174
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v0, "STATE_ERROR"

    return-object v0

    .line 175
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist copy()Landroid/service/notification/Condition;
    .locals 2

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 213
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/Condition;->writeToParcel(Landroid/os/Parcel;I)V

    .line 214
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 215
    new-instance v1, Landroid/service/notification/Condition;

    invoke-direct {v1, v0}, Landroid/service/notification/Condition;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    return-object v1

    .line 217
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 218
    throw v1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 156
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 159
    .local v0, "token":J
    iget-object v2, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 160
    iget-object v2, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 161
    iget-object v2, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 162
    iget-object v2, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    const-wide v3, 0x10900000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 163
    iget v2, p0, Landroid/service/notification/Condition;->icon:I

    const-wide v3, 0x10500000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 164
    iget v2, p0, Landroid/service/notification/Condition;->state:I

    const-wide v3, 0x10e00000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 165
    iget v2, p0, Landroid/service/notification/Condition;->flags:I

    const-wide v3, 0x10500000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 167
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 168
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 188
    instance-of v0, p1, Landroid/service/notification/Condition;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 189
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 190
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/notification/Condition;

    .line 191
    .local v2, "other":Landroid/service/notification/Condition;
    iget-object v3, v2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v4, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    .line 192
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    .line 193
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    .line 194
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/service/notification/Condition;->icon:I

    iget v4, p0, Landroid/service/notification/Condition;->icon:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/Condition;->state:I

    iget v4, p0, Landroid/service/notification/Condition;->state:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/Condition;->flags:I

    iget v4, p0, Landroid/service/notification/Condition;->flags:I

    if-ne v3, v4, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    nop

    .line 191
    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 202
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/Condition;->icon:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/Condition;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/Condition;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/Condition;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/Condition;->state:I

    invoke-static {v1}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    const-string v1, ",summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    const-string v1, ",line1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    const-string v1, ",line2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    const-string v1, ",icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/Condition;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    const-string v1, ",flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/Condition;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 132
    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 133
    iget-object v0, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget v0, p0, Landroid/service/notification/Condition;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Landroid/service/notification/Condition;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Landroid/service/notification/Condition;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return-void
.end method
