.class public final Landroid/renderscript/ScriptGroup$Closure;
.super Landroid/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Closure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Closure"


# instance fields
.field private greylist-max-o mArgs:[Ljava/lang/Object;

.field private greylist-max-o mBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFP:Landroid/renderscript/FieldPacker;

.field private greylist-max-o mGlobalFuture:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Landroid/renderscript/ScriptGroup$Future;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

.field private greylist-max-o mReturnValue:Landroid/renderscript/Allocation;


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 118
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 24
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "invokeID"    # Landroid/renderscript/Script$InvokeID;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Landroid/renderscript/Script$InvokeID;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p4, "globals":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const-wide/16 v0, 0x0

    invoke-direct {v9, v0, v1, v10}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 163
    invoke-static/range {p3 .. p3}, Landroid/renderscript/FieldPacker;->createFromArray([Ljava/lang/Object;)Landroid/renderscript/FieldPacker;

    move-result-object v0

    iput-object v0, v9, Landroid/renderscript/ScriptGroup$Closure;->mFP:Landroid/renderscript/FieldPacker;

    .line 165
    move-object/from16 v11, p3

    iput-object v11, v9, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    .line 166
    move-object/from16 v12, p4

    iput-object v12, v9, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v9, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 169
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    move-result v13

    .line 171
    .local v13, "numValues":I
    new-array v14, v13, [J

    .line 172
    .local v14, "fieldIDs":[J
    new-array v15, v13, [J

    .line 173
    .local v15, "values":[J
    new-array v8, v13, [I

    .line 174
    .local v8, "sizes":[I
    new-array v7, v13, [J

    .line 175
    .local v7, "depClosures":[J
    new-array v6, v13, [J

    .line 177
    .local v6, "depFieldIDs":[J
    const/4 v0, 0x0

    .line 178
    .local v0, "i":I
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/Map$Entry;

    .line 179
    .local v18, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    .line 180
    .local v19, "obj":Ljava/lang/Object;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/renderscript/Script$FieldID;

    .line 181
    .local v5, "fieldID":Landroid/renderscript/Script$FieldID;
    invoke-virtual {v5, v10}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    aput-wide v0, v14, v17

    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object v3, v5

    move-object/from16 v4, v19

    move-object/from16 v20, v5

    .end local v5    # "fieldID":Landroid/renderscript/Script$FieldID;
    .local v20, "fieldID":Landroid/renderscript/Script$FieldID;
    move-object v5, v15

    move-object/from16 v21, v6

    .end local v6    # "depFieldIDs":[J
    .local v21, "depFieldIDs":[J
    move-object v6, v8

    move-object/from16 v22, v7

    .end local v7    # "depClosures":[J
    .local v22, "depClosures":[J
    move-object/from16 v23, v8

    .end local v8    # "sizes":[I
    .local v23, "sizes":[I
    move-object/from16 v8, v21

    invoke-direct/range {v0 .. v8}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 184
    nop

    .end local v18    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    .end local v19    # "obj":Ljava/lang/Object;
    .end local v20    # "fieldID":Landroid/renderscript/Script$FieldID;
    add-int/lit8 v17, v17, 0x1

    .line 185
    move-object/from16 v6, v21

    move-object/from16 v8, v23

    goto :goto_0

    .line 187
    .end local v21    # "depFieldIDs":[J
    .end local v22    # "depClosures":[J
    .end local v23    # "sizes":[I
    .restart local v6    # "depFieldIDs":[J
    .restart local v7    # "depClosures":[J
    .restart local v8    # "sizes":[I
    :cond_0
    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .end local v6    # "depFieldIDs":[J
    .end local v7    # "depClosures":[J
    .end local v8    # "sizes":[I
    .restart local v21    # "depFieldIDs":[J
    .restart local v22    # "depClosures":[J
    .restart local v23    # "sizes":[I
    move-object/from16 v7, p2

    invoke-virtual {v7, v10}, Landroid/renderscript/Script$InvokeID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget-object v0, v9, Landroid/renderscript/ScriptGroup$Closure;->mFP:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    move-object/from16 v0, p1

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v23

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nInvokeClosureCreate(J[B[J[J[I)J

    move-result-wide v0

    .line 190
    .local v0, "id":J
    invoke-virtual {v9, v0, v1}, Landroid/renderscript/ScriptGroup$Closure;->setID(J)V

    .line 192
    iget-object v2, v9, Landroid/renderscript/ScriptGroup$Closure;->guard:Ldalvik/system/CloseGuard;

    const-string v3, "destroy"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 27
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "kernelID"    # Landroid/renderscript/Script$KernelID;
    .param p3, "returnType"    # Landroid/renderscript/Type;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Landroid/renderscript/Script$KernelID;",
            "Landroid/renderscript/Type;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p5, "globals":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    move-object/from16 v9, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p4

    const-wide/16 v10, 0x0

    invoke-direct {v9, v10, v11, v15}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 124
    iput-object v13, v9, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    .line 125
    move-object/from16 v14, p3

    invoke-static {v15, v14}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, v9, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    .line 126
    move-object/from16 v12, p5

    iput-object v12, v9, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v9, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 129
    array-length v0, v13

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v1

    add-int v8, v0, v1

    .line 131
    .local v8, "numValues":I
    new-array v7, v8, [J

    .line 132
    .local v7, "fieldIDs":[J
    new-array v6, v8, [J

    .line 133
    .local v6, "values":[J
    new-array v5, v8, [I

    .line 134
    .local v5, "sizes":[I
    new-array v4, v8, [J

    .line 135
    .local v4, "depClosures":[J
    new-array v3, v8, [J

    .line 138
    .local v3, "depFieldIDs":[J
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    array-length v0, v13

    if-ge v2, v0, :cond_0

    .line 139
    aput-wide v10, v7, v2

    .line 140
    const/16 v16, 0x0

    aget-object v17, v13, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v18, v2

    .end local v2    # "i":I
    .local v18, "i":I
    move-object/from16 v20, v3

    .end local v3    # "depFieldIDs":[J
    .local v20, "depFieldIDs":[J
    move-object/from16 v3, v16

    move-object/from16 v21, v4

    .end local v4    # "depClosures":[J
    .local v21, "depClosures":[J
    move-object/from16 v4, v17

    move-object/from16 v22, v5

    .end local v5    # "sizes":[I
    .local v22, "sizes":[I
    move-object v5, v6

    move-object/from16 v23, v6

    .end local v6    # "values":[J
    .local v23, "values":[J
    move-object/from16 v6, v22

    move-object/from16 v24, v7

    .end local v7    # "fieldIDs":[J
    .local v24, "fieldIDs":[J
    move-object/from16 v7, v21

    move/from16 v25, v8

    .end local v8    # "numValues":I
    .local v25, "numValues":I
    move-object/from16 v8, v20

    invoke-direct/range {v0 .. v8}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 138
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move/from16 v8, v25

    .end local v18    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 143
    .end local v20    # "depFieldIDs":[J
    .end local v21    # "depClosures":[J
    .end local v22    # "sizes":[I
    .end local v23    # "values":[J
    .end local v24    # "fieldIDs":[J
    .end local v25    # "numValues":I
    .restart local v3    # "depFieldIDs":[J
    .restart local v4    # "depClosures":[J
    .restart local v5    # "sizes":[I
    .restart local v6    # "values":[J
    .restart local v7    # "fieldIDs":[J
    .restart local v8    # "numValues":I
    :cond_0
    move/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move/from16 v25, v8

    .end local v2    # "i":I
    .end local v3    # "depFieldIDs":[J
    .end local v4    # "depClosures":[J
    .end local v5    # "sizes":[I
    .end local v6    # "values":[J
    .end local v7    # "fieldIDs":[J
    .end local v8    # "numValues":I
    .restart local v18    # "i":I
    .restart local v20    # "depFieldIDs":[J
    .restart local v21    # "depClosures":[J
    .restart local v22    # "sizes":[I
    .restart local v23    # "values":[J
    .restart local v24    # "fieldIDs":[J
    .restart local v25    # "numValues":I
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move/from16 v26, v18

    .end local v18    # "i":I
    .local v26, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/Map$Entry;

    .line 144
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    .line 145
    .local v16, "obj":Ljava/lang/Object;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/renderscript/Script$FieldID;

    .line 146
    .local v8, "fieldID":Landroid/renderscript/Script$FieldID;
    invoke-virtual {v8, v15}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    aput-wide v0, v24, v26

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move-object v3, v8

    move-object/from16 v4, v16

    move-object/from16 v5, v23

    move-object/from16 v6, v22

    move-object/from16 v7, v21

    move-object/from16 v17, v8

    .end local v8    # "fieldID":Landroid/renderscript/Script$FieldID;
    .local v17, "fieldID":Landroid/renderscript/Script$FieldID;
    move-object/from16 v8, v20

    invoke-direct/range {v0 .. v8}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 149
    nop

    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    .end local v16    # "obj":Ljava/lang/Object;
    .end local v17    # "fieldID":Landroid/renderscript/Script$FieldID;
    add-int/lit8 v26, v26, 0x1

    .line 150
    goto :goto_1

    .line 152
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget-object v3, v9, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    invoke-virtual {v3, v15}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    move-object/from16 v10, p1

    move-wide v11, v1

    move-wide v13, v3

    move-object/from16 v15, v24

    move-object/from16 v16, v23

    move-object/from16 v17, v22

    move-object/from16 v18, v21

    move-object/from16 v19, v20

    invoke-virtual/range {v10 .. v19}, Landroid/renderscript/RenderScript;->nClosureCreate(JJ[J[J[I[J[J)J

    move-result-wide v1

    .line 155
    .local v1, "id":J
    invoke-virtual {v9, v1, v2}, Landroid/renderscript/ScriptGroup$Closure;->setID(J)V

    .line 157
    iget-object v3, v9, Landroid/renderscript/ScriptGroup$Closure;->guard:Ldalvik/system/CloseGuard;

    const-string v4, "destroy"

    invoke-virtual {v3, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private greylist-max-o retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V
    .locals 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "index"    # I
    .param p3, "fid"    # Landroid/renderscript/Script$FieldID;
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "values"    # [J
    .param p6, "sizes"    # [I
    .param p7, "depClosures"    # [J
    .param p8, "depFieldIDs"    # [J

    .line 218
    instance-of v0, p4, Landroid/renderscript/ScriptGroup$Future;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 219
    move-object v0, p4

    check-cast v0, Landroid/renderscript/ScriptGroup$Future;

    .line 220
    .local v0, "f":Landroid/renderscript/ScriptGroup$Future;
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p4

    .line 221
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getClosure()Landroid/renderscript/ScriptGroup$Closure;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    aput-wide v3, p7, p2

    .line 222
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getFieldID()Landroid/renderscript/Script$FieldID;

    move-result-object v3

    .line 223
    .local v3, "fieldID":Landroid/renderscript/Script$FieldID;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v1

    :goto_0
    aput-wide v4, p8, p2

    .line 224
    .end local v0    # "f":Landroid/renderscript/ScriptGroup$Future;
    .end local v3    # "fieldID":Landroid/renderscript/Script$FieldID;
    goto :goto_1

    .line 225
    :cond_1
    aput-wide v1, p7, p2

    .line 226
    aput-wide v1, p8, p2

    .line 229
    :goto_1
    instance-of v0, p4, Landroid/renderscript/ScriptGroup$Input;

    if-eqz v0, :cond_3

    .line 230
    move-object v0, p4

    check-cast v0, Landroid/renderscript/ScriptGroup$Input;

    .line 231
    .local v0, "unbound":Landroid/renderscript/ScriptGroup$Input;
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    array-length v3, v3

    if-ge p2, v3, :cond_2

    .line 232
    invoke-virtual {v0, p0, p2}, Landroid/renderscript/ScriptGroup$Input;->addReference(Landroid/renderscript/ScriptGroup$Closure;I)V

    goto :goto_2

    .line 234
    :cond_2
    invoke-virtual {v0, p0, p3}, Landroid/renderscript/ScriptGroup$Input;->addReference(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;)V

    .line 236
    :goto_2
    aput-wide v1, p5, p2

    .line 237
    const/4 v1, 0x0

    aput v1, p6, p2

    .line 238
    .end local v0    # "unbound":Landroid/renderscript/ScriptGroup$Input;
    goto :goto_3

    .line 239
    :cond_3
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    invoke-direct {v0, p1, p4}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 240
    .local v0, "vs":Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    iget-wide v1, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    aput-wide v1, p5, p2

    .line 241
    iget v1, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    aput v1, p6, p2

    .line 243
    .end local v0    # "vs":Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    :goto_3
    return-void
.end method


# virtual methods
.method public whitelist destroy()V
    .locals 1

    .line 199
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    .line 200
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 203
    :cond_0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    .line 209
    invoke-super {p0}, Landroid/renderscript/BaseObj;->finalize()V

    .line 210
    return-void
.end method

.method public whitelist getGlobal(Landroid/renderscript/Script$FieldID;)Landroid/renderscript/ScriptGroup$Future;
    .locals 3
    .param p1, "field"    # Landroid/renderscript/Script$FieldID;

    .line 267
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ScriptGroup$Future;

    .line 269
    .local v0, "f":Landroid/renderscript/ScriptGroup$Future;
    if-nez v0, :cond_1

    .line 274
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 275
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Landroid/renderscript/ScriptGroup$Future;

    if-eqz v2, :cond_0

    .line 276
    move-object v2, v1

    check-cast v2, Landroid/renderscript/ScriptGroup$Future;

    invoke-virtual {v2}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 278
    :cond_0
    new-instance v2, Landroid/renderscript/ScriptGroup$Future;

    invoke-direct {v2, p0, p1, v1}, Landroid/renderscript/ScriptGroup$Future;-><init>(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V

    move-object v0, v2

    .line 279
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method public whitelist getReturn()Landroid/renderscript/ScriptGroup$Future;
    .locals 3

    .line 252
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Landroid/renderscript/ScriptGroup$Future;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    invoke-direct {v0, p0, v1, v2}, Landroid/renderscript/ScriptGroup$Future;-><init>(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    .line 256
    :cond_0
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    return-object v0
.end method

.method greylist-max-o setArg(ILjava/lang/Object;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 286
    instance-of v0, p2, Landroid/renderscript/ScriptGroup$Future;

    if-eqz v0, :cond_0

    .line 287
    move-object v0, p2

    check-cast v0, Landroid/renderscript/ScriptGroup$Future;

    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 289
    :cond_0
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 290
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1, p2}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 291
    .local v0, "vs":Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-wide v5, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iget v7, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nClosureSetArg(JIJI)V

    .line 292
    return-void
.end method

.method greylist-max-o setGlobal(Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .locals 9
    .param p1, "fieldID"    # Landroid/renderscript/Script$FieldID;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 295
    instance-of v0, p2, Landroid/renderscript/ScriptGroup$Future;

    if-eqz v0, :cond_0

    .line 296
    move-object v0, p2

    check-cast v0, Landroid/renderscript/ScriptGroup$Future;

    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 298
    :cond_0
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1, p2}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 300
    .local v0, "vs":Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-wide v6, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iget v8, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->nClosureSetGlobal(JJJI)V

    .line 301
    return-void
.end method
